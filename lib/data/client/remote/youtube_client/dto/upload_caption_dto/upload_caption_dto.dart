import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_caption_dto.freezed.dart';

part 'upload_caption_dto.g.dart';

@Freezed()
class UploadCaptionDto with _$UploadCaptionDto {
  const factory UploadCaptionDto({
    required String oAuthToken,
    required String videoId, required String language, required String srt
}) = _UploadCaptionDto;

  factory UploadCaptionDto.fromJson(Map<String, Object?> json) =>
      _$UploadCaptionDtoFromJson(json);
}