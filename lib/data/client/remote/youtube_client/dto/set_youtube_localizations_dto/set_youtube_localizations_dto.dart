import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_youtube_localizations_dto.freezed.dart';

part 'set_youtube_localizations_dto.g.dart';

@Freezed()
class SetYoutubeLocalizationsDto with _$SetYoutubeLocalizationsDto {
  const factory SetYoutubeLocalizationsDto({
    required String oAuthToken,
    required String videoId,
    required Map<String, Map<String, String>> localizations,
}) = _SetYoutubeLocalizationsDto;

  factory SetYoutubeLocalizationsDto.fromJson(Map<String, Object?> json) =>
      _$SetYoutubeLocalizationsDtoFromJson(json);
}