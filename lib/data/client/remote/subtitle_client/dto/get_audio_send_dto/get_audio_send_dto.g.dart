// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_audio_send_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAudioSendDtoImpl _$$GetAudioSendDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAudioSendDtoImpl(
      srtList: (json['srtList'] as List<dynamic>)
          .map((e) => MergeAudioDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetAudioSendDtoImplToJson(
        _$GetAudioSendDtoImpl instance) =>
    <String, dynamic>{
      'srtList': instance.srtList.map((e) => e.toJson()).toList(),
    };
