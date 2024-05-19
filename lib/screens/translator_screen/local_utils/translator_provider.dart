import 'dart:html' as http;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:wakelock_plus/wakelock_plus.dart';
import 'package:youtube_translation/models/one_translate_model.dart';
import 'package:youtube_translation/models/translates_model.dart';
import 'package:youtube_translation/models/upload_percentage_model.dart';
import 'package:youtube_translation/models/video_upload_model.dart';
import 'package:youtube_translation/services/translate_https.dart';
import 'package:youtube_translation/services/user_https.dart';
import 'package:youtube_translation/services/youtube_upload_https.dart';
import 'package:youtube_translation/utils/key_storage.dart';
import 'dart:convert';

import 'package:youtube_translation/utils/srt_split_util.dart';

enum VideoInputType { file, videoId }

class TranslatorProvider extends ChangeNotifier {
  final srtList = <OneTranslateModel>[];
  final tags = <String>[];

  String _comment = '';

  String _videoId = '';

  String get videoId => _videoId;

  String _blogPostLink = '';

  String get blogPostLink => _blogPostLink;

  set setBlogPostLink(String link) {
    _blogPostLink = link;
    notifyListeners();
  }

  set setVideoId(String text) {
    _videoId = text;
    notifyListeners();
  }

  var _videoInputType = VideoInputType.file;

  VideoInputType get videoInputType => _videoInputType;

  set setVideoInputType(VideoInputType type) {
    _videoInputType = type;
    notifyListeners();
  }

  set setComment(String comment) {
    _comment = comment;
    notifyListeners();
  }

  void tagInit() {
    UserHttps(_googleSignIn).getTags.then((value) {
      setTags = value;
      notifyListeners();
    });
  }

  set setTags(List<String> tags) {
    this.tags.clear();
    this.tags.addAll(tags);
    notifyListeners();
  }

  void removeTag(String tag) {
    tags.remove(tag);
    UserHttps(_googleSignIn).updateTags(tags);
    notifyListeners();
  }

  void addTag(String tag) {
    tags.add(tag);
    UserHttps(_googleSignIn).updateTags(tags);
    notifyListeners();
  }

  void setYoutubeApiKey(String key) {
    UserHttps(_googleSignIn).updateYoutubeApiKey(key);
  }

  Future<String?> get getYoutubeApiKey async {
    return await UserHttps(_googleSignIn).getYoutubeApiKey;
  }

  void setOpenAiApiKey(String key) {
    UserHttps(_googleSignIn).updateOpenAiApiKey(key);
  }

  Future<String?> get getOpenAiApiKey async {
    return await UserHttps(_googleSignIn).getOpenAiApiKey;
  }

  String _languageCode = OneTranslateModel.en;

  String get languageCode => _languageCode;

  set setLanguageCode(String languageCode) {
    _languageCode = languageCode;
    notifyListeners();
  }

  Future<String> get getTitleHeader async {
    return await UserHttps(_googleSignIn).getTitleHeader;
  }

  Future setTitleHeader(String txt) async {
    return await UserHttps(_googleSignIn).updateTitleHeader(txt);
  }

  Future<String> get getDescriptionHeader async {
    return await UserHttps(_googleSignIn).getDescriptionHeader;
  }

  Future setDescriptionHeader(String txt) async {
    return await UserHttps(_googleSignIn).updateDescriptionHeader(txt);
  }

  var _title = '';
  Map<String, String>? _translatedTitle;

  String? get translatedTitle => _translatedTitle?[_languageCode];

  bool _translatingTitle = false;

  bool get translatingTitle => _translatingTitle;

  Future translateTitle(String controllerText) async {
    var openAiApiKey = await getOpenAiApiKey;
    if (!translatingTitle && _title != controllerText && openAiApiKey != null) {
      _title = controllerText;
      _translatingTitle = true;
      notifyListeners();
      _translatedTitle =
          await TranslateHttps.translateTxt(_title, openAiApiKey: openAiApiKey);
      _translatingTitle = false;
      notifyListeners();
    }
  }

  var _description = '';
  Map<String, String>? _translatedDescription;

  String? get translatedDescription => _translatedDescription?[_languageCode];

  bool _translatingDescription = false;

  bool get translatingDescription => _translatingDescription;

  Future translateDescription(String controllerText) async {
    var openAiApiKey = await getOpenAiApiKey;
    if (!translatingDescription &&
        _description != controllerText &&
        openAiApiKey != null) {
      _description = controllerText;
      _translatingDescription = true;
      notifyListeners();
      _translatedDescription = await TranslateHttps.translateTxt(_description,
          openAiApiKey: openAiApiKey);
      _translatingDescription = false;
      notifyListeners();
    }
  }

  bool _readingSrt = false;

  bool get readingSrt => _readingSrt;

  Future readSrt(Uint8List data) async {
    var openAiApiKey = await getOpenAiApiKey;
    if (!_readingSrt && openAiApiKey != null) {
      _readingSrt = true;
      notifyListeners();
      var txt = utf8.decode(data);
      var list = SrtSplitUtil(txt).split;
      // var oAuthToken = (await _googleId!.authentication).accessToken;
      // if(oAuthToken != null) {
      //   var srtMap = <int, MultipleSrtModel>{};
      //   var originalList = SrtSplitUtil(txt).split;
      //   for(var model in originalList){
      //     srtMap[model.order] = MultipleSrtModel(model);
      //   }
      //   for(var m in srtMap.values){
      //     for(var lang in OneTranslateModel.langList){
      //       print('o : ${m.originalText}');
      //       var translatedTxt = await YoutubeUploadHttps(oAuthToken, _googleId!).translateText(
      //           m.originalText, lang);
      //       print('t : $translatedTxt');
      //       m.addOne(lang, translatedTxt);
      //     }
      //   }
      //   srtList.addAll(srtMap.values.map((e) => e.translationModel).toList());
      //   notifyListeners();
      // }

      await TranslateHttps.translateTxtList(openAiApiKey: openAiApiKey, list,
          (srtModel, translatedText) {
        srtList.add(OneTranslateModel(
          order: srtModel.order,
          period: srtModel.time,
          translations: translatedText,
        ));
        srtList.sort((a, b) => a.order.compareTo(b.order));
        notifyListeners();
      });
      _readingSrt = false;
      notifyListeners();
    }
  }

  VideoUploadModel? _videoUploadModel;

  bool get hasVideo => _videoUploadModel != null;

  String get videoName => _videoUploadModel!.name;

  void setVideo(
      {required String mime,
      required String name,
      required Stream<List<int>> videoStream,
      required int size}) {
    if (mime.isNotEmpty) {
      if (mime.split('/').first == 'video') {
        _videoUploadModel = VideoUploadModel(name, videoStream, size);
        notifyListeners();
      }
    }
  }

  Uint8List? _thumbnail;

  bool get hasThumbnail => _thumbnail != null;

  Uint8List get thumbnail => _thumbnail!;

  void setThumbnail(String mime, Uint8List thumbnail) {
    if (mime.isNotEmpty) {
      if (mime.split('/').first == 'image') {
        _thumbnail = thumbnail;
        notifyListeners();
      }
    }
  }

  void changeQuotes(OneTranslateModel model, bool state) {
    model.setQuotes = state;
    notifyListeners();
  }

  void changeBracket(OneTranslateModel model, bool state) {
    model.setBracket = state;
    notifyListeners();
  }

  bool _addOriginal = false;

  bool get addOriginal => _addOriginal;

  set setAddOriginal(bool addOriginal) {
    _addOriginal = addOriginal;
    notifyListeners();
  }

  void download() {
    if (!readingSrt && srtList.isNotEmpty) {
      // Encode our file in base64
      final base64 = base64Encode(
          Uint8List.fromList(utf8.encode(_generateSrt(languageCode))));
      // Create the link with the file
      final anchor = http.AnchorElement(
          href: 'data:application/octet-stream;base64,$base64')
        ..target = 'blank';
      // add the name
      anchor.download = 'subtitle-${DateTime.now().millisecondsSinceEpoch}.srt';
      // trigger download
      http.document.body?.append(anchor);
      anchor.click();
      anchor.remove();
      return;
    }
  }

  bool get readyToUpload {
    switch (videoInputType) {
      case VideoInputType.file:
        // TODO: Handle this case.
        return hasVideo &&
            _translatedTitle != null &&
            _translatedDescription != null;
      case VideoInputType.videoId:
        return videoId.isNotEmpty;
    }
  }

  String _generateSrt(String languageCode) {
    String text = '';
    for (var srt in srtList) {
      text += '${srt.order}\n';
      text += '${srt.period}\n';
      if (addOriginal) {
        text +=
            '${srt.getLang(OneTranslateModel.original, addQuotesAndBracket: true)}\n';
      }
      text += '${srt.getLang(languageCode, addQuotesAndBracket: true)}\n';
      text += '\n';
    }
    text = text.trim();
    return text;
  }

  void changeSubTxt(OneTranslateModel model, String txt) {
    model.setLang(languageCode, txt);
    notifyListeners();
  }

  final _googleSignIn = GoogleSignIn(
      scopes: [
        'https://www.googleapis.com/auth/youtube.upload',
        'https://www.googleapis.com/auth/youtube.force-ssl',
      ],
      clientId:
          '133538713387-d4jnbid8v4v1tl6p7f4v29afpdns94tl.apps.googleusercontent.com');
  GoogleSignInAccount? _googleId;

  bool get isLogin => _googleId != null;

  Future login() async {
    _googleId = await _googleSignIn.signIn();
    if (_googleId != null) {
      await UserHttps(_googleSignIn)
          .getRefreshToken((await _googleId!.authentication).accessToken!);
      tagInit();
    }
    notifyListeners();
  }

  Future loginCheck() async {
    var signedIn = await _googleSignIn.isSignedIn();
    if (signedIn) {
      _googleId = _googleSignIn.currentUser;
      notifyListeners();
    }
  }

  UploadPercentageModel? _uploadPercentage;

  int get uploadPercentage => _uploadPercentage!.percentage;

  String get uploadText => _uploadPercentage!.text;

  bool get isUploading => _uploadPercentage != null;

  Future upload() async {
    if (isLogin && readyToUpload) {
      await WakelockPlus.enable();
      var oAuthToken =
          (await (await _googleSignIn.signInSilently())!.authentication)
              .accessToken;
      if (oAuthToken != null) {
        _uploadPercentage = UploadPercentageModel('uploading video');
        notifyListeners();
        var localizations = await _localizations;
        String? videoId;
        switch (_videoInputType) {
          case VideoInputType.file:
            videoId = await YoutubeUploadHttps(oAuthToken, _googleSignIn)
                .uploadVideo(_videoUploadModel!.videoStream,
                    _videoUploadModel!.size, tags, localizations!,
                    uploadProgressCallback: (double percentage) {
              var p = (percentage * 100).floor();
              _uploadPercentage!.setPercentage = p;
              notifyListeners();
            });
            break;
          case VideoInputType.videoId:
            videoId = _videoId.trim();
            break;
        }
        if (videoId != null && videoId.isNotEmpty) {
          oAuthToken = (await _googleId!.authentication).accessToken;
          if (oAuthToken != null) {
            _uploadPercentage!.setText = 'uploading localizations';
            notifyListeners();
            if (localizations != null) {
              await YoutubeUploadHttps(oAuthToken, _googleSignIn)
                  .setVideoLocalizations(videoId, localizations);
            }
            _uploadPercentage!.setText = 'uploading thumbnail';
            notifyListeners();
            var youtubeUploadHttps =
                YoutubeUploadHttps(oAuthToken, _googleSignIn);
            if (_thumbnail != null) {
              await youtubeUploadHttps.setThumbnail(videoId, thumbnail);
            }
            if (srtList.isNotEmpty) {
              _uploadPercentage!.setText = 'uploading captions';
              notifyListeners();
              for (var lang in OneTranslateModel.langList) {
                var srt = _generateSrt(lang);
                await YoutubeUploadHttps(oAuthToken, _googleSignIn)
                    .uploadCaption(videoId, lang, srt);
              }
            }
            if (_comment.trim().isNotEmpty) {
              _uploadPercentage!.setText = 'uploading comment';
              notifyListeners();
              await YoutubeUploadHttps(oAuthToken, _googleSignIn)
                  .postComment(videoId, _comment.trim());
            }
          }
        }
      }
    }
    await WakelockPlus.disable();
    _uploadPercentage = null;
    notifyListeners();
  }

  Future<Map<String, Map<String, String>>?> get _localizations async {
    var localizations = <String, Map<String, String>>{};
    String titleHeader = (await getTitleHeader).trim();
    if (titleHeader.isNotEmpty) {
      titleHeader += ' ';
    }

    String descriptionHeader = (await getDescriptionHeader).trim();
    if (descriptionHeader.isNotEmpty) {
      descriptionHeader += '\n\n';
    }
    if (_translatedTitle != null && _translatedDescription != null) {
      for (var lang in OneTranslateModel.langList) {
        String blogPostLink = translateBlogPostLink(lang);
        localizations[lang] = {
          'title': '$titleHeader${_translatedTitle![lang]!}',
          'description':
              blogPostLink + descriptionHeader + _translatedDescription![lang]!,
        };
      }
      return localizations;
    } else {
      return null;
    }
  }

  String translateBlogPostLink(String targetLang){
    String blogPostLink = _blogPostLink.trim();
    if (blogPostLink.isNotEmpty) {
      for (var exampleLang in OneTranslateModel.langList) {
        var routerLang = '/$exampleLang/';
        if (blogPostLink.contains(routerLang)) {
          blogPostLink =
          '${TranslatesModel(targetLang).blogStory} : ${blogPostLink.replaceFirst(routerLang, '/$targetLang/')}\n\n';
          break;
        }
      } // 귀찮아서 안했지만, 여기에도 없는 언어로 하면 한 언어로 다 들어가져버리는 버그가 있을꺼다.
      // 하지만 왠만하면 영어, 한국어 사이에서 넣을꺼기때문에 괜찮을듯
    }
    return blogPostLink;
  }
}
