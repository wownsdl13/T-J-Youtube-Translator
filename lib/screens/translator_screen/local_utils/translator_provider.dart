import 'dart:html' as http;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:youtube_translation/models/one_translate_model.dart';
import 'package:youtube_translation/models/upload_percentage_model.dart';
import 'package:youtube_translation/models/video_upload_model.dart';
import 'package:youtube_translation/services/translate_https.dart';
import 'package:youtube_translation/services/youtube_upload_https.dart';
import 'package:youtube_translation/utils/key_storage.dart';
import 'dart:convert';
import 'package:http/http.dart' as temp;

import 'package:youtube_translation/utils/srt_split_util.dart';

class TranslatorProvider extends ChangeNotifier {
  final srtList = <OneTranslateModel>[];
  final tags = <String>[];

  set setTags(List<String> tags) {
    this.tags.clear();
    this.tags.addAll(tags);
    notifyListeners();
  }

  void removeTag(String tag) {
    tags.remove(tag);
    KeyStorage.setKey(KeyStorage.tag, tags.join(','));
    notifyListeners();
  }

  void addTag(String tag) {
    tags.add(tag);
    KeyStorage.setKey(KeyStorage.tag, tags.join(','));
    notifyListeners();
  }

  String _languageCode = OneTranslateModel.en;

  String get languageCode => _languageCode;

  set setLanguageCode(String languageCode) {
    _languageCode = languageCode;
    notifyListeners();
  }

  var _title = '';
  Map<String, String>? _translatedTitle;

  String? get translatedTitle => _translatedTitle?[_languageCode];

  bool _translatingTitle = false;

  bool get translatingTitle => _translatingTitle;

  Future translateTitle(String controllerText) async {
    if (!translatingTitle &&
        _title != controllerText &&
        await KeyStorage.hasKey(KeyStorage.chatGptKey)) {
      _title = controllerText;
      _translatingTitle = true;
      notifyListeners();
      _translatedTitle = await TranslateHttps.translateTxt(_title);
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
    if (!translatingDescription &&
        _description != controllerText &&
        await KeyStorage.hasKey(KeyStorage.chatGptKey)) {
      _description = controllerText;
      _translatingDescription = true;
      notifyListeners();
      _translatedDescription = await TranslateHttps.translateTxt(_description);
      _translatingDescription = false;
      notifyListeners();
    }
  }

  bool _readingSrt = false;

  bool get readingSrt => _readingSrt;

  Future readSrt(Uint8List data) async {
    if (!_readingSrt && await KeyStorage.hasKey(KeyStorage.chatGptKey)) {
      _readingSrt = true;
      notifyListeners();
      var txt = utf8.decode(data);
      var list = SrtSplitUtil(txt).split;
      for (var l in list) {
        var lang = await TranslateHttps.translateTxt(l.text);
        srtList.add(OneTranslateModel(
          order: l.order,
          period: l.time,
          translations: lang,
        ));
        notifyListeners();
      }
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

  Future<bool> get readyToUpload async {
    return srtList.isNotEmpty &&
        _translatedTitle != null &&
        _translatedDescription != null &&
        await KeyStorage.hasKey(KeyStorage.youtubeApiKey) &&
        _videoUploadModel != null &&
        _thumbnail != null &&
        tags.isNotEmpty;
  }

  String _generateSrt(String languageCode) {
    String text = '';
    for (var srt in srtList) {
      text += '${srt.order}\n';
      text += '${srt.period}\n';
      if (addOriginal) {
        text += '${srt.getLang(OneTranslateModel.original)}\n';
      }
      text += '${srt.getLang(languageCode)}\n';
      text += '\n';
    }
    text = text.trim();
    return text;
  }

  void changeSubTxt(OneTranslateModel model, String txt){
    model.setLang(languageCode, txt);
    notifyListeners();
  }

  final _googleSignIn = GoogleSignIn(scopes: [
    'https://www.googleapis.com/auth/youtube.upload',
    'https://www.googleapis.com/auth/youtube.force-ssl',
  ], clientId: '133538713387-d4jnbid8v4v1tl6p7f4v29afpdns94tl.apps.googleusercontent.com');
  GoogleSignInAccount? _googleId;

  bool get isLogin => _googleId != null;

  Future login() async {
    _googleId = await _googleSignIn.signIn();
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

  Future uploadTest() async{
    _uploadPercentage = UploadPercentageModel('uploading video');
    for(var p = 0; p <= 100; p++){
      _uploadPercentage!.setPercentage = p;
      await Future.delayed(const Duration(milliseconds: 200));
      notifyListeners();
    }
    await Future.delayed(const Duration(milliseconds: 1000));
    _uploadPercentage!.setText = 'uploading thumbnail';
    notifyListeners();
    await Future.delayed(const Duration(milliseconds: 1000));
    _uploadPercentage!.setText = 'uploading captions';
    notifyListeners();
    await Future.delayed(const Duration(milliseconds: 1000));
    _uploadPercentage = null;
    notifyListeners();
  }

  Future upload() async {
    // if (isLogin && hasVideo) {
      var oAuthToken = (await _googleId!.authentication).accessToken;
      if (oAuthToken != null) {
        _uploadPercentage = UploadPercentageModel('uploading video');
        notifyListeners();
        var videoId = '49D4RtnkTl0';
        // var videoId = await YoutubeUploadHttps(oAuthToken).uploadVideo(
        //     _videoUploadModel!.videoStream, _videoUploadModel!.size, tags,
        //     uploadProgressCallback: (double percentage) {
        //       var p = (percentage * 100).floor();
        //       _uploadPercentage!.setPercentage = p;
        //       notifyListeners();
        //     });
        if (videoId != null) {
          oAuthToken = (await _googleId!.authentication).accessToken;
          if (oAuthToken != null) {
            _uploadPercentage!.setText = 'uploading thumbnail';
            notifyListeners();
            var youtubeUploadHttps = YoutubeUploadHttps(oAuthToken);
            // await youtubeUploadHttps.setThumbnail(videoId, thumbnail);
            var localizations = <String, Map<String, String>>{};

            String titleHeader = '';
            if (await KeyStorage.hasKey(KeyStorage.titleHeader) &&
                (await KeyStorage.getKey(KeyStorage.titleHeader))!.trim()
                    .isNotEmpty) {
              titleHeader =
              '${await KeyStorage.getKey(KeyStorage.titleHeader)} ';
            }
            String descriptionHeader = '';
            if (await KeyStorage.hasKey(KeyStorage.descriptionHeader) &&
                (await KeyStorage.getKey(KeyStorage.descriptionHeader))!.trim()
                    .isNotEmpty) {
              descriptionHeader =
              '${await KeyStorage.getKey(KeyStorage.descriptionHeader)}\n\n';
            }

            print('..11');
            // if (_translatedTitle != null && _translatedDescription != null) {
            //   for (var lang in OneTranslateModel.langList) {
            //     print('..22 > $lang');
            //     localizations[lang] = {
            //       'title': '$titleHeader${_translatedTitle![lang]!}',
            //       'description': descriptionHeader +
            //           _translatedDescription![lang]!,
            //     };
            //   }
            // }
            _uploadPercentage!.setText = 'uploading title and description';
            notifyListeners();
            await youtubeUploadHttps.setVideoLocalizations(
                videoId, localizations);
            if (srtList.isNotEmpty) {
              _uploadPercentage!.setText = 'uploading captions';
              notifyListeners();
              for (var lang in OneTranslateModel.langList) {
                await youtubeUploadHttps.addCaption(
                    videoId, _generateSrt(lang), lang);
              }
            }
          }
        }
      }
    // }
    _uploadPercentage = null;
    notifyListeners();
  }
}
