// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_youtube_localizations_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetYoutubeLocalizationsDtoImpl _$$SetYoutubeLocalizationsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SetYoutubeLocalizationsDtoImpl(
      oAuthToken: json['oAuthToken'] as String,
      videoId: json['videoId'] as String,
      localizations: (json['localizations'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Map<String, String>.from(e as Map)),
      ),
    );

Map<String, dynamic> _$$SetYoutubeLocalizationsDtoImplToJson(
        _$SetYoutubeLocalizationsDtoImpl instance) =>
    <String, dynamic>{
      'oAuthToken': instance.oAuthToken,
      'videoId': instance.videoId,
      'localizations': instance.localizations,
    };
