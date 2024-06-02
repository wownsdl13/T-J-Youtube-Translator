// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_comment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostCommentDtoImpl _$$PostCommentDtoImplFromJson(Map<String, dynamic> json) =>
    _$PostCommentDtoImpl(
      oAuthToken: json['oAuthToken'] as String,
      videoId: json['videoId'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$PostCommentDtoImplToJson(
        _$PostCommentDtoImpl instance) =>
    <String, dynamic>{
      'oAuthToken': instance.oAuthToken,
      'videoId': instance.videoId,
      'text': instance.text,
    };
