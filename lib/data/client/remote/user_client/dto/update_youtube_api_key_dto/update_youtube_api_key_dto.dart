import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_youtube_api_key_dto.freezed.dart';

part 'update_youtube_api_key_dto.g.dart';

@Freezed()
class UpdateYoutubeApiKeyDto with _$UpdateYoutubeApiKeyDto {
  const factory UpdateYoutubeApiKeyDto({
    required String key
}) = _UpdateYoutubeApiKeyDto;

  factory UpdateYoutubeApiKeyDto.fromJson(Map<String, Object?> json) =>
      _$UpdateYoutubeApiKeyDtoFromJson(json);
}