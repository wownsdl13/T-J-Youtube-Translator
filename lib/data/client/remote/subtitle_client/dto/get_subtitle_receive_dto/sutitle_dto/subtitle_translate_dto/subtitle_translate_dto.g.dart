// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subtitle_translate_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubtitleTranslateDtoImpl _$$SubtitleTranslateDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SubtitleTranslateDtoImpl(
      pk: json['pk'] as String,
      languageCode: json['languageCode'] as String,
      text: json['text'] as String,
      subtitleOnePk: json['subtitleOnePk'] as String,
    );

Map<String, dynamic> _$$SubtitleTranslateDtoImplToJson(
        _$SubtitleTranslateDtoImpl instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'languageCode': instance.languageCode,
      'text': instance.text,
      'subtitleOnePk': instance.subtitleOnePk,
    };
