import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_translation/data/client/remote/subtitle_client/dto/merge_audio_dto/merge_audio_dto.dart';

part 'get_audio_send_dto.freezed.dart';

part 'get_audio_send_dto.g.dart';

@Freezed()
class GetAudioSendDto with _$GetAudioSendDto {
  const factory GetAudioSendDto({
    required List<MergeAudioDto> srtList
}) = _GetAudioSendDto;

  factory GetAudioSendDto.fromJson(Map<String, Object?> json) =>
      _$GetAudioSendDtoFromJson(json);
}