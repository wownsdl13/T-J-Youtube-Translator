// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_tags_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateTagsDtoImpl _$$UpdateTagsDtoImplFromJson(Map<String, dynamic> json) =>
    _$UpdateTagsDtoImpl(
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$UpdateTagsDtoImplToJson(_$UpdateTagsDtoImpl instance) =>
    <String, dynamic>{
      'tags': instance.tags,
    };
