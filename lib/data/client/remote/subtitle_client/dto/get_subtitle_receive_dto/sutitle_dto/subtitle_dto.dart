import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_translation/data/client/remote/subtitle_client/dto/get_subtitle_receive_dto/sutitle_dto/subtitle_translate_dto/subtitle_translate_dto.dart';
import 'package:youtube_translation/models/one_translate/enum/subtitle_one_type.dart';
import 'package:youtube_translation/models/one_translate/one_translate.dart';

part 'subtitle_dto.freezed.dart';

part 'subtitle_dto.g.dart';

@Freezed()
class SubtitleDto with _$SubtitleDto {
  const factory SubtitleDto({
    required String pk,
    required int order,
    required String period,
    required SubtitleOneType subtitleOneType,
    required String subtitlePk,
    required Map<String, String> translations,
  }) = _SubtitleDto;
  const SubtitleDto._();

  factory SubtitleDto.fromJson(Map<String, dynamic> json) =>
      _$SubtitleDtoFromJson({
        ...json,
        'translations': {
          for (var e in (json['subtitleOneTranslates'] as List)
              .map((e) => SubtitleTranslateDto.fromJson(e)))
            e.languageCode: e.text
        },
      });

  OneTranslate toOneTranslate() {
    return OneTranslate(
      order: order,
      period: period,
      translations: translations,
        subtitleOneType: subtitleOneType
    );
  }
}
