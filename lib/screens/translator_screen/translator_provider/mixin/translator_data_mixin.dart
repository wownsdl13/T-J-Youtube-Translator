import 'dart:convert';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wakelock_plus/wakelock_plus.dart';
import 'package:youtube_translation/data/repository/remote/subtitle_repository/subtitle_repository.dart';
import 'package:youtube_translation/data/repository/remote/translate_repository/translate_repository.dart';
import 'package:youtube_translation/data/repository/remote/user_repository/user_repository.dart';
import 'package:youtube_translation/models/one_translate/enum/subtitle_one_type.dart';
import 'package:youtube_translation/models/one_translate/one_translate.dart';
import 'package:youtube_translation/provider/screen_provider/screen_provider.dart';
import 'package:youtube_translation/screens/translator_screen/translator_provider/translator_provider.dart';
import 'package:youtube_translation/screens/translator_screen/translator_provider/translator_state/translator_state.dart';
import 'package:youtube_translation/utils/languages.dart';
import 'package:youtube_translation/utils/srt_split_util.dart';

mixin TranslatorDataMixin<T extends TranslatorState> {
  @protected
  abstract TranslatorState state;

  NotifierProviderRef<TranslatorState> get ref;

  void setSubtitle({required String name, required Uint8List data}) {
    var txt = utf8.decode(data);
    var srtList = SrtSplitUtil(txt).split;
    var translateList = srtList
        .map((srt) => OneTranslate(
                order: srt.order,
                period: srt.period,
                translations: {
                  Languages.original: srt.text,
                  Languages.ko: srt.text
                }))
        .toList();
    state = state.copyWith.translatorDataState(
        translate: state.translatorDataState.translate
            .copyWith(translates: translateList));
  }

  set setBlogPostLink(String link) {
    state = state.copyWith.translatorDataState(blogPostLink: link);
  }

  set setVideoId(String text) {
    state = state.copyWith.translatorDataState(videoId: text);
  }

  set setComment(String comment) {
    state = state.copyWith.translatorDataState(comment: comment);
  }

  set setTags(List<String> tags) {
    state = state.copyWith.translatorDataState(tags: tags);
  }

  String removeTag(String tag) {
    var newTags = List<String>.from(state.translatorDataState.tags);
    newTags.remove(tag);
    state = state.copyWith.translatorDataState(tags: newTags);
    if (newTags.isNotEmpty) {
      return newTags.last;
    }
    return '';
  }

  void addTag(String tag) {
    state = state.copyWith.translatorDataState(
        tags: List<String>.from(state.translatorDataState.tags)..add(tag));
  }

  Future setTitleHeader(String txt) async {
    return await ref
        .read(userRepositoryProvider.notifier)
        .updateTitleHeader(txt: txt);
  }

  Future setDescriptionHeader(String txt) async {
    return await ref
        .read(userRepositoryProvider.notifier)
        .updateDescriptionHeader(txt: txt);
  }

  void setThumbnail(String mime, Uint8List thumbnail) {
    if (mime.isNotEmpty) {
      if (mime.split('/').first == 'image') {
        state = state.copyWith.translatorDataState(thumbnail: thumbnail);
      }
    }
  }

  void setLang(OneTranslate model,
      {required String languageCode, required String text}) {
    if (!state.translatorDataState.hasLang(languageCode)) {
      return;
    }
    var newTranslations = Map<String, String>.from(model.translations);
    newTranslations[languageCode] = text;
    var newModel = model.copyWith(translations: newTranslations);
    var oldList =
        List<OneTranslate>.from(state.translatorDataState.translateList);
    var index = oldList.indexOf(model);
    oldList.remove(model);
    oldList.insert(index, newModel);
    state = state.copyWith.translatorDataState(
        translate:
            state.translatorDataState.translate.copyWith(translates: oldList));
    var modelTranslate =
        state.translatorDataState.translate.copyWith(translates: [model]);
    if (state.translatorDataState.translatedToEn) {
      EasyDebounce.debounce(
          'set-lang-${model.order}', const Duration(milliseconds: 300), () {
        ref
            .read(subtitleRepositoryProvider.notifier)
            .uploadSubtitle(translate: modelTranslate);
      });
    }
  }

  void setOneTranslateType(OneTranslate model,
      {required SubtitleOneType type}) {
    var oldList =
        List<OneTranslate>.from(state.translatorDataState.translateList);
    var index = oldList.indexOf(model);
    oldList.remove(model);
    var newModel = model.copyWith(subtitleOneType: type);
    oldList.insert(index, newModel);
    state = state.copyWith.translatorDataState(
        translate:
            state.translatorDataState.translate.copyWith(translates: oldList));
    ref.read(subtitleRepositoryProvider.notifier).uploadSubtitle(
        translate: state.translatorDataState.translate
            .copyWith(translates: [newModel]));
  }

  set setAddOriginal(bool addOriginal) {
    state = state.copyWith(addOriginal: addOriginal);
  }

  Future tagInit() async {
    var tags = await ref.read(userRepositoryProvider).getTags();
    state = state.copyWith.translatorDataState(tags: tags);
  }

  Future translateTitle(String controllerText) async {
    var openAiApiKey = await ref.read(screenProvider).getOpenAiApiKey;
    if (!state.translatorLoadingState.translatingTitle &&
        state.translatorDataState.title != controllerText) {
      state = state.copyWith(
          translatorDataState:
              state.translatorDataState.copyWith(title: controllerText, translatedTitle: {
                Languages.ko:controllerText
              }),
          translatorLoadingState:
              state.translatorLoadingState.copyWith(translatingTitle: true));
      for (var lang in Languages.langList) {
        var old = Map<String, String>.from(state.translatorDataState.translatedTitle!);
        if(old.containsKey(lang)){
          continue;
        }
        var translatedTitle = await ref
            .read(translateRepositoryProvider.notifier)
            .translateToLanguages(controllerText, lang,
                openAiApiKey: openAiApiKey);
        old[lang] = translatedTitle;
        state = state.copyWith(
            translatorDataState:
                state.translatorDataState.copyWith(translatedTitle: old));
        print('T lang > $lang');
      }
      state = state.copyWith(
          translatorLoadingState:
              state.translatorLoadingState.copyWith(translatingTitle: false));
    }
  }

  Future translateDescription(String controllerText) async {
    var openAiApiKey = await ref.read(screenProvider).getOpenAiApiKey;
    if (!state.translatorLoadingState.translatingDescription &&
        state.translatorDataState.description != controllerText) {
      state = state.copyWith(
          translatorDataState:
              state.translatorDataState.copyWith(description: controllerText, translatedDescription: {
                Languages.ko:controllerText
              }),
          translatorLoadingState: state.translatorLoadingState
              .copyWith(translatingDescription: true));
      for (var lang in Languages.langList) {
        var old = Map<String, String>.from(state.translatorDataState.translatedDescription!);
        if(old.containsKey(lang)){
          continue;
        }
        var translatedTitle = await ref
            .read(translateRepositoryProvider.notifier)
            .translateToLanguages(controllerText, lang,
                openAiApiKey: openAiApiKey);
        old[lang] = translatedTitle;
        state = state.copyWith(
            translatorDataState:
                state.translatorDataState.copyWith(translatedDescription: old));
        print('D lang > $lang');
      }
      state = state.copyWith(
          translatorLoadingState: state.translatorLoadingState
              .copyWith(translatingDescription: false));
    }
  }

  Future translateToTargetLang(
      {required String fromLanguageCode,
      required String toLanguageCode}) async {
    var openAiApiKey = await ref.read(screenProvider).getOpenAiApiKey;
    if (!state.translatorLoadingState.readingSrt) {
      WakelockPlus.enable();
      state = state.copyWith
          .translatorLoadingState(readingSrt: true, loadingPercentage: 0);
      var list = state.translatorDataState.translateList;
      if (list.isEmpty) {
        return;
      }
      var englishTranslates = await ref
          .read(translateRepositoryProvider.notifier)
          .translateToTargetLang(list,
              openAiApiKey: openAiApiKey,
              fromLanguageCode: fromLanguageCode,
              toLanguageCode: toLanguageCode);
      state = state.copyWith.translatorDataState(
          translate: state.translatorDataState.translate
              .copyWith(translates: englishTranslates));
      await ref
          .read(subtitleRepositoryProvider.notifier)
          .uploadSubtitle(translate: state.translatorDataState.translate);
    }
    WakelockPlus.disable();
    state = state.copyWith
        .translatorLoadingState(readingSrt: false, loadingPercentage: null);
  }

  Future translateToAll() async {
    var openAiApiKey = await ref.read(screenProvider).getOpenAiApiKey;
    if (!state.translatorDataState.translatedToEn) {
      return;
    }
    WakelockPlus.enable();
    if (!state.translatorLoadingState.readingSrt) {
      state = state.copyWith
          .translatorLoadingState(readingSrt: true, loadingPercentage: 0);
      var list = state.translatorDataState.translateList;
      if (list.isEmpty) {
        return;
      }
      var langList = Languages.langList;
      var doneCount = 0;
      for (var lang in langList) {
        doneCount++;
        var percentage = (doneCount / langList.length * 100).floor();
        if (state.translatorDataState.hasLang(lang)) {
          state = state.copyWith(
              translatorLoadingState: state.translatorLoadingState
                  .copyWith(loadingPercentage: percentage));
          continue;
        }
        var list = state.translatorDataState.translateList;
        var fromLanguageCode = Languages.en;
        // if it's japanese then translate from original (korean)
        if (lang == Languages.ja) {
          fromLanguageCode = Languages.original;
        }
        var englishTranslates = await ref
            .read(translateRepositoryProvider.notifier)
            .translateToTargetLang(list,
                openAiApiKey: openAiApiKey,
                fromLanguageCode: fromLanguageCode,
                toLanguageCode: lang);

        state = state.copyWith(
            translatorDataState: state.translatorDataState.copyWith(
                translate: state.translatorDataState.translate
                    .copyWith(translates: englishTranslates)),
            translatorLoadingState: state.translatorLoadingState
                .copyWith(loadingPercentage: percentage));
      }
      await ref
          .read(subtitleRepositoryProvider.notifier)
          .uploadSubtitle(translate: state.translatorDataState.translate);
      state = state.copyWith
          .translatorLoadingState(readingSrt: false, loadingPercentage: null);
      WakelockPlus.disable();
    }
  }
}
