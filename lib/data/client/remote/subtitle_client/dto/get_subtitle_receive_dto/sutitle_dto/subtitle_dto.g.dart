// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subtitle_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubtitleDtoImpl _$$SubtitleDtoImplFromJson(Map<String, dynamic> json) =>
    _$SubtitleDtoImpl(
      pk: json['pk'] as String,
      order: (json['order'] as num).toInt(),
      period: json['period'] as String,
      subtitleOneType:
          $enumDecode(_$SubtitleOneTypeEnumMap, json['subtitleOneType']),
      subtitlePk: json['subtitlePk'] as String,
      translations: Map<String, String>.from(json['translations'] as Map),
    );

Map<String, dynamic> _$$SubtitleDtoImplToJson(_$SubtitleDtoImpl instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'order': instance.order,
      'period': instance.period,
      'subtitleOneType': _$SubtitleOneTypeEnumMap[instance.subtitleOneType]!,
      'subtitlePk': instance.subtitlePk,
      'translations': instance.translations,
    };

const _$SubtitleOneTypeEnumMap = {
  SubtitleOneType.talk: 'talk',
  SubtitleOneType.narration: 'narration',
  SubtitleOneType.text: 'text',
};
