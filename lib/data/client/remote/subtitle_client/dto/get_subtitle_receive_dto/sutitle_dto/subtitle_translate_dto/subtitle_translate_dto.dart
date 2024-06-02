import 'package:freezed_annotation/freezed_annotation.dart';

part 'subtitle_translate_dto.freezed.dart';

part 'subtitle_translate_dto.g.dart';

@Freezed()
class SubtitleTranslateDto with _$SubtitleTranslateDto {
  const factory SubtitleTranslateDto({
    required String pk,
    required String languageCode,
    required String text,
    required String subtitleOnePk,
}) = _SubtitleTranslateDto;

  factory SubtitleTranslateDto.fromJson(Map<String, Object?> json) =>
      _$SubtitleTranslateDtoFromJson(json);
}