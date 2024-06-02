// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_thumbnail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadThumbnailDtoImpl _$$UploadThumbnailDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadThumbnailDtoImpl(
      videoId: json['videoId'] as String,
      oAuthToken: json['oAuthToken'] as String,
    );

Map<String, dynamic> _$$UploadThumbnailDtoImplToJson(
        _$UploadThumbnailDtoImpl instance) =>
    <String, dynamic>{
      'videoId': instance.videoId,
      'oAuthToken': instance.oAuthToken,
    };
