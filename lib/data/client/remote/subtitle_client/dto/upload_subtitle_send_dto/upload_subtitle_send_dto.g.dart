// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_subtitle_send_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadSubtitleSendDtoImpl _$$UploadSubtitleSendDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadSubtitleSendDtoImpl(
      pk: json['pk'] as String,
      subtitles: (json['subtitles'] as List<dynamic>)
          .map((e) => SubtitleOneDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UploadSubtitleSendDtoImplToJson(
        _$UploadSubtitleSendDtoImpl instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'subtitles': instance.subtitles.map((e) => e.toJson()).toList(),
    };
