// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_subtitle_receive_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetSubtitleReceiveDtoImpl _$$GetSubtitleReceiveDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GetSubtitleReceiveDtoImpl(
      pk: json['pk'] as String,
      createTime: _fromJsonTimestamp(json['createTime'] as String),
      subtitles: (json['subtitles'] as List<dynamic>)
          .map((e) => SubtitleDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetSubtitleReceiveDtoImplToJson(
        _$GetSubtitleReceiveDtoImpl instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'createTime': _toJsonTimestamp(instance.createTime),
      'subtitles': instance.subtitles.map((e) => e.toJson()).toList(),
    };
