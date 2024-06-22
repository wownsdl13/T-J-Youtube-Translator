import 'dart:convert';
import 'dart:typed_data';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:wakelock_plus/wakelock_plus.dart';
import 'package:youtube_translation/data/client/remote/subtitle_client/dto/merge_audio_dto/merge_audio_dto.dart';
import 'package:youtube_translation/data/client/remote/subtitle_client/enum/get_subtitle_direction.dart';
import 'package:youtube_translation/data/repository/remote/subtitle_repository/subtitle_repository.dart';
import 'package:youtube_translation/data/repository/remote/user_repository/user_repository.dart';
import 'package:youtube_translation/data/repository/remote/youtube_repository/youtube_repository.dart';
import 'package:youtube_translation/models/one_translate/enum/subtitle_one_type.dart';
import 'package:youtube_translation/models/one_translate/one_translate.dart';
import 'package:youtube_translation/models/translate/translate.dart';
import 'package:youtube_translation/models/translates.dart';
import 'package:youtube_translation/models/upload_percentage/upload_percentage.dart';
import 'package:youtube_translation/models/video_upload/video_upload.dart';
import 'package:youtube_translation/provider/screen_provider/screen_provider.dart';
import 'package:youtube_translation/screens/translator_screen/translator_provider/enum/video_input_type.dart';
import 'package:youtube_translation/screens/translator_screen/translator_provider/mixin/translator_data_mixin.dart';
import 'package:youtube_translation/screens/translator_screen/translator_provider/translator_state/sub_state/translator_data_state/translator_data_state.dart';
import 'package:youtube_translation/screens/translator_screen/translator_provider/translator_state/translator_state.dart';
import 'package:youtube_translation/utils/languages.dart';

import 'dart:html' as html;

part 'translator_provider.g.dart';

@Riverpod(keepAlive: true)
class Translator extends _$Translator with TranslatorDataMixin {
  @override
  TranslatorState build() {
    var yrs = ref.read(youtubeRepositoryProvider);
    var urs = ref.read(userRepositoryProvider);
    return TranslatorState(
        youtubeRepositoryState: yrs,
        userRepositoryState: urs,
        translatorDataState: TranslatorDataState(
            ref: ref,
            translate: Translate.create(),
            userRepositoryState: urs,
            youtubeRepositoryState: yrs));
  }

  set setVideoInputType(VideoInputType type) {
    state = state.copyWith(videoInputType: type);
  }

  Future setYoutubeApiKey(String key) async {
    await ref
        .read(userRepositoryProvider.notifier)
        .updateYoutubeApikey(key: key);
  }

  Future setOpenAiApiKey(String key) async {
    await ref
        .read(userRepositoryProvider.notifier)
        .updateOpenAiApiKey(key: key);
  }

  void setVideo(
      {required String mime,
      required String name,
      required Stream<List<int>> videoStream,
      required int size}) {
    if (mime.isNotEmpty) {
      if (mime.split('/').first == 'video') {
        state = state.copyWith(
            videoUpload:
                VideoUpload(name: name, videoStream: videoStream, size: size));
      }
    }
  }

  Future getAudio() async {
    if (!state.translatorLoadingState.readingSrt &&
        state.translatorLoadingState.loadingPercentage == null &&
        state.translatorDataState.translatedToEn &&
        !state.translatorLoadingState.gettingAudio) {
      WakelockPlus.enable();
      var translateList =
          List<OneTranslate>.from(state.translatorDataState.translateList);
      //only pick narration
      translateList.removeWhere(
          (one) => one.subtitleOneType != SubtitleOneType.narration);
      var englishList = translateList
          .map((value) => MergeAudioDto(
              period: value.period, text: value.getLang(Languages.en)))
          .toList();
      state = state.copyWith.translatorLoadingState(gettingAudio: true);
      var data = await ref
          .read(subtitleRepositoryProvider)
          .getAudio(srtList: englishList);
      _downloadData(data, name: 'TTS-audio.mp3');
      state = state.copyWith.translatorLoadingState(gettingAudio: false);
      WakelockPlus.disable();
    }
  }

  Future search({required GetSubtitleDirection direction}) async {
    var result = await ref.read(subtitleRepositoryProvider).getSubtitle(
        pk: state.translatorDataState.translate.pk, direction: direction);
    state = state.copyWith.translatorDataState(translate: result);
  }

  Future delete() async {
    await ref
        .read(subtitleRepositoryProvider.notifier)
        .deleteSubtitle(translate: state.translatorDataState.translate);
    var emptyTranslate = Translate.create();
    state = state.copyWith.translatorDataState(translate: emptyTranslate);
  }

  void download() {
    if (!state.translatorLoadingState.readingSrt &&
        state.translatorDataState.translateList.isNotEmpty) {
      var languageCode =
          ref.read(screenProvider.select((selector) => selector.languageCode));
      var data = Uint8List.fromList(utf8.encode(_generateSrt(languageCode)));
      // Create the link with the file
      _downloadData(data,
          name:
              'subtitle-$languageCode-${DateTime.now().millisecondsSinceEpoch}.srt');
      return;
    }
  }

  void _downloadData(Uint8List data, {required String name}) {
    // Encode our file in base64
    final base64 = base64Encode(data);
    final anchor =
        html.AnchorElement(href: 'data:application/octet-stream;base64,$base64')
          ..target = 'blank';
    // add the name
    anchor.download = name;
    // trigger download
    html.document.body?.append(anchor);
    anchor.click();
    anchor.remove();
  }

  Future upload() async {
    var ss = ref.read(screenProvider);
    if (ss.isLogin && state.readyToUpload) {
      await WakelockPlus.enable();
      var oAuthToken = await ss.googleAccessToken;
      if (oAuthToken != null) {
        state = state.copyWith(
            uploadPercentage: const UploadPercentage(text: 'uploading video'));
        var localizations = await _localizations;
        String? videoId;
        switch (state.videoInputType) {
          case VideoInputType.file:
            videoId =
                await ref.read(youtubeRepositoryProvider.notifier).uploadVideo(
                    oAuthToken: oAuthToken,
                    videoStream: state.videoUpload!.videoStream,
                    getFileSize: state.videoUpload!.size,
                    tags: state.translatorDataState.tags,
                    localizations: localizations,
                    uploadProgressCallback: (double percentage) {
                      var p = (percentage * 100).floor();
                      state = state.copyWith(
                          uploadPercentage:
                              state.uploadPercentage!.copyWith(percentage: p));
                    });
            break;
          case VideoInputType.videoId:
            videoId = state.translatorDataState.videoId.trim();
            break;
        }
        if (videoId != null && videoId.isNotEmpty) {
          oAuthToken = await ss.googleAccessToken;
          if (oAuthToken != null) {
            if (state.translatorDataState.title.trim().isNotEmpty) {
              state = state.copyWith(
                  uploadPercentage: state.uploadPercentage!
                      .copyWith(text: 'uploading localizations'));
              await ref
                  .read(youtubeRepositoryProvider.notifier)
                  .setVideoLocalizations(
                      oAuthToken: oAuthToken,
                      videoId: videoId,
                      localizations: localizations);
            }
            state = state.copyWith(
                uploadPercentage: state.uploadPercentage!
                    .copyWith(text: 'uploading thumbnail'));
            if (state.translatorDataState.hasThumbnail) {
              await ref
                  .read(youtubeRepositoryProvider.notifier)
                  .uploadThumbnail(
                      oAuthToken: oAuthToken,
                      videoId: videoId,
                      thumbnail: state.translatorDataState.thumbnail!);
            }
            if (state.translatorDataState.translateList.isNotEmpty) {
              state = state.copyWith(
                  uploadPercentage: state.uploadPercentage!
                      .copyWith(text: 'uploading captions', percentage: 0));
              var count = 0;
              for (var lang in Languages.captionsLangList) {
                count++;
                try {
                  var srt = _generateSrt(lang);
                  await ref
                      .read(youtubeRepositoryProvider.notifier)
                      .uploadCaption(
                          oAuthToken: oAuthToken,
                          videoId: videoId,
                          language: lang,
                          srt: srt);
                  state = state.copyWith(
                      uploadPercentage: state.uploadPercentage!.copyWith(
                          percentage:
                              (count / Languages.captionsLangList.length).floor()));
                } catch (e) {
                  print('cannot upload $lang caption');
                }
              }
            }
            var comment = state.translatorDataState.comment.trim();
            if (comment.isNotEmpty) {
              state = state.copyWith(
                  uploadPercentage: state.uploadPercentage!
                      .copyWith(text: 'uploading comment'));
              ref.read(youtubeRepositoryProvider.notifier).postComment(
                  oAuthToken: oAuthToken, videoId: videoId, text: comment);
            }
          }
        }
      }
    }
    await WakelockPlus.disable();
    state = state.copyWith(uploadPercentage: null);
  }

  Future<Map<String, Map<String, String>>> get _localizations async {
    var localizations = <String, Map<String, String>>{};
    if (state.translatorDataState.title.trim().isEmpty) {
      return {};
    }
    String titleHeader =
        (await state.translatorDataState.getTitleHeader).trim();
    if (titleHeader.isNotEmpty) {
      titleHeader += ' ';
    }


    String descriptionHeader =
        (await state.translatorDataState.getDescriptionHeader).trim();
    if (descriptionHeader.isNotEmpty) {
      descriptionHeader += '\n\n';
    }
    for (var lang in Languages.langList) {
      String subtitleSupport = Languages.getSubtitleSupportMessage(lang);
      if(subtitleSupport.isNotEmpty){
        subtitleSupport += '\n\n\n';
      }
      String blogPostLink = _translateBlogPostLink(lang);
      localizations[lang] = {
        'title':
            '$titleHeader${state.translatorDataState.translatedTitle![lang]!}',
        'description': subtitleSupport + blogPostLink +
            descriptionHeader +
            state.translatorDataState.translatedDescription![lang]!,
      };
    }
    return localizations;
  }

  String _translateBlogPostLink(String targetLang) {
    String blogPostLink = state.translatorDataState.blogPostLink.trim();
    var blogTargetLang = targetLang;
    if (Languages.blogLangList.contains(targetLang)) {
      blogTargetLang = Languages.en; // 블로그 지원이 안되는
    }
    if (blogPostLink.isNotEmpty) {
      for (var exampleLang in Languages.langList) {
        var routerLang = '/$exampleLang/';
        if (blogPostLink.contains(routerLang)) {
          blogPostLink =
              '${Translates(targetLang).blogStory} : ${blogPostLink.replaceFirst(routerLang, '/$blogTargetLang/')}\n\n';
          break;
        }
      }
    }
    return blogPostLink;
  }

  String _generateSrt(String languageCode) {
    String text = '';
    for (var srt in state.translatorDataState.translateList) {
      text += '${srt.order}\n';
      text += '${srt.period}\n';
      if (state.addOriginal) {
        text +=
            '${srt.getLang(Languages.original, addQuotesAndBracket: true)}\n';
      }
      text += '${srt.getLang(languageCode, addQuotesAndBracket: true)}\n';
      text += '\n';
    }
    text = text.trim();
    return text;
  }
}
