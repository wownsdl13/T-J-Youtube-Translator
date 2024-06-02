import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_translation/data/client/remote/subtitle_client/dto/upload_subtitle_send_dto/subtitle_one_dto/subtitle_one_dto.dart';

part 'upload_subtitle_send_dto.freezed.dart';

part 'upload_subtitle_send_dto.g.dart';

@Freezed()
class UploadSubtitleSendDto with _$UploadSubtitleSendDto {
  const factory UploadSubtitleSendDto({
    required String pk,
    required List<SubtitleOneDto> subtitles
}) = _UploadSubtitleSendDto;

  factory UploadSubtitleSendDto.fromJson(Map<String, Object?> json) =>
      _$UploadSubtitleSendDtoFromJson(json);
}