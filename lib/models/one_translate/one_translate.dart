import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_translation/models/one_translate/enum/subtitle_one_type.dart';

part 'one_translate.freezed.dart';

@Freezed()
class OneTranslate with _$OneTranslate {
  const factory OneTranslate(
      {required int order,
      required String period,
      @Default(SubtitleOneType.narration) SubtitleOneType subtitleOneType,
      required Map<String, String> translations}) = _OneTranslate;

  const OneTranslate._();

  bool hasLang(String languageCode) => translations.containsKey(languageCode);

  String getLang(String languageCode, {bool addQuotesAndBracket = false}) {
    if (translations[languageCode] == null) {
      return '';
    }
    var text = translations[languageCode]!;
    if(!addQuotesAndBracket){
      return text;
    }
    switch (subtitleOneType) {
      case SubtitleOneType.narration:
        return text;
      case SubtitleOneType.text:
        return '($text)';
      case SubtitleOneType.talk:
        return '"$text"';
    }
  }
}
