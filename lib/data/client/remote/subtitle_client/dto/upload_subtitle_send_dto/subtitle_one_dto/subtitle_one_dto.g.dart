// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subtitle_one_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubtitleOneDtoImpl _$$SubtitleOneDtoImplFromJson(Map<String, dynamic> json) =>
    _$SubtitleOneDtoImpl(
      order: (json['order'] as num).toInt(),
      period: json['period'] as String,
      subtitleOneType:
          $enumDecode(_$SubtitleOneTypeEnumMap, json['subtitleOneType']),
      translations: Map<String, String>.from(json['translations'] as Map),
    );

Map<String, dynamic> _$$SubtitleOneDtoImplToJson(
        _$SubtitleOneDtoImpl instance) =>
    <String, dynamic>{
      'order': instance.order,
      'period': instance.period,
      'subtitleOneType': _$SubtitleOneTypeEnumMap[instance.subtitleOneType]!,
      'translations': instance.translations,
    };

const _$SubtitleOneTypeEnumMap = {
  SubtitleOneType.talk: 'talk',
  SubtitleOneType.narration: 'narration',
  SubtitleOneType.text: 'text',
};
