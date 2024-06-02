import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

part 'upload_thumbnail_dto.freezed.dart';
part 'upload_thumbnail_dto.g.dart';

@freezed
class UploadThumbnailDto with _$UploadThumbnailDto {
  const factory UploadThumbnailDto({
    required String videoId,
    required String oAuthToken,
  }) = _UploadThumbnailDto;

  factory UploadThumbnailDto.fromJson(Map<String, dynamic> json) => _$UploadThumbnailDtoFromJson(json);
}