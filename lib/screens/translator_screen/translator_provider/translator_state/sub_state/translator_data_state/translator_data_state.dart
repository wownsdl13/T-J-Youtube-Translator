import 'dart:typed_data';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_translation/data/repository/remote/user_repository/user_repository_state/user_repository_state.dart';
import 'package:youtube_translation/data/repository/remote/youtube_repository/youtube_repository_state/youtube_repository_state.dart';
import 'package:youtube_translation/models/one_translate/one_translate.dart';
import 'package:youtube_translation/models/translate/translate.dart';
import 'package:youtube_translation/provider/screen_provider/screen_provider.dart';
import 'package:youtube_translation/screens/translator_screen/translator_provider/translator_state/translator_state.dart';
import 'package:youtube_translation/utils/languages.dart';

part 'translator_data_state.freezed.dart';

@Freezed()
class TranslatorDataState with _$TranslatorDataState {
  const factory TranslatorDataState({
    @protected required NotifierProviderRef<TranslatorState> ref,
    required Translate translate,
    @Default([]) List<String> tags,
    @Default('') String comment,
    @Default('') String videoId,
    @Default('') String blogPostLink,
    @Default('') String title,
    @Default('') String description,
    Map<String, String>? translatedTitle,
    Map<String, String>? translatedDescription,
    Uint8List? thumbnail,
    //repositories
    @protected required YoutubeRepositoryState youtubeRepositoryState,
    @protected required UserRepositoryState userRepositoryState,
  }) = _TranslatorDataState;

  const TranslatorDataState._();

  int get translatedCount{
    if(translateList.isEmpty){
      return 0;
    }
    return translateList.first.translations.keys.length;
  }

  bool get translatedToEn =>
      translateList.isNotEmpty && translateList.first.hasLang(Languages.en);

  bool hasLang(String languageCode) =>
      translateList.isNotEmpty && translateList.first.hasLang(languageCode);

  bool get translatedToAll =>
      translateList.isNotEmpty && translateList.first.hasLang(Languages.id);

  List<OneTranslate> get translateList => translate.translates;

  String get _languageCode => ref.read(screenProvider).languageCode;

  bool get hasThumbnail => thumbnail != null;

  String? get translatedTitleText => translatedTitle?[_languageCode];

  String? get translatedDescriptionText =>
      translatedDescription?[_languageCode];

  Future<String> get getTitleHeader async {
    return await userRepositoryState.getTitleHeader();
  }

  Future<String> get getDescriptionHeader async {
    return await userRepositoryState.getDescriptionHeader();
  }
}
