import 'package:freezed_annotation/freezed_annotation.dart';

part 'merge_audio_dto.freezed.dart';

part 'merge_audio_dto.g.dart';

@Freezed()
class MergeAudioDto with _$MergeAudioDto {
  const factory MergeAudioDto({
    required String period,
    required String text,
}) = _MergeAudioDto;

  factory MergeAudioDto.fromJson(Map<String, Object?> json) =>
      _$MergeAudioDtoFromJson(json);
}