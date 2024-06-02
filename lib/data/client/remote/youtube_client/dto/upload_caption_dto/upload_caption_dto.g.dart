// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_caption_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadCaptionDtoImpl _$$UploadCaptionDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadCaptionDtoImpl(
      oAuthToken: json['oAuthToken'] as String,
      videoId: json['videoId'] as String,
      language: json['language'] as String,
      srt: json['srt'] as String,
    );

Map<String, dynamic> _$$UploadCaptionDtoImplToJson(
        _$UploadCaptionDtoImpl instance) =>
    <String, dynamic>{
      'oAuthToken': instance.oAuthToken,
      'videoId': instance.videoId,
      'language': instance.language,
      'srt': instance.srt,
    };
