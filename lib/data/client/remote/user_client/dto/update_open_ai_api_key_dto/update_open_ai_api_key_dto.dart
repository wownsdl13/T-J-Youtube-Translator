import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_open_ai_api_key_dto.freezed.dart';

part 'update_open_ai_api_key_dto.g.dart';

@Freezed()
class UpdateOpenAiApiKeyDto with _$UpdateOpenAiApiKeyDto {
  const factory UpdateOpenAiApiKeyDto({
    required String key
}) = _UpdateOpenAiApiKeyDto;

  factory UpdateOpenAiApiKeyDto.fromJson(Map<String, Object?> json) =>
      _$UpdateOpenAiApiKeyDtoFromJson(json);
}