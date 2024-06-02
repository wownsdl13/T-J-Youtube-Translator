import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_translation/models/one_translate/enum/subtitle_one_type.dart';

part 'subtitle_one_dto.freezed.dart';

part 'subtitle_one_dto.g.dart';

@Freezed()
class SubtitleOneDto with _$SubtitleOneDto {
  const factory SubtitleOneDto({
    required int order,
    required String period,
    required SubtitleOneType subtitleOneType,
    required Map<String, String> translations,
}) = _SubtitleOneDto;

  factory SubtitleOneDto.fromJson(Map<String, Object?> json) =>
      _$SubtitleOneDtoFromJson(json);
}