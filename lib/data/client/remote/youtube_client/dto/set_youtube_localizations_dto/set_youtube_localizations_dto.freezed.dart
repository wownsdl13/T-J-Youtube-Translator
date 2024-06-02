// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_youtube_localizations_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SetYoutubeLocalizationsDto _$SetYoutubeLocalizationsDtoFromJson(
    Map<String, dynamic> json) {
  return _SetYoutubeLocalizationsDto.fromJson(json);
}

/// @nodoc
mixin _$SetYoutubeLocalizationsDto {
  String get oAuthToken => throw _privateConstructorUsedError;
  String get videoId => throw _privateConstructorUsedError;
  Map<String, Map<String, String>> get localizations =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetYoutubeLocalizationsDtoCopyWith<SetYoutubeLocalizationsDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetYoutubeLocalizationsDtoCopyWith<$Res> {
  factory $SetYoutubeLocalizationsDtoCopyWith(SetYoutubeLocalizationsDto value,
          $Res Function(SetYoutubeLocalizationsDto) then) =
      _$SetYoutubeLocalizationsDtoCopyWithImpl<$Res,
          SetYoutubeLocalizationsDto>;
  @useResult
  $Res call(
      {String oAuthToken,
      String videoId,
      Map<String, Map<String, String>> localizations});
}

/// @nodoc
class _$SetYoutubeLocalizationsDtoCopyWithImpl<$Res,
        $Val extends SetYoutubeLocalizationsDto>
    implements $SetYoutubeLocalizationsDtoCopyWith<$Res> {
  _$SetYoutubeLocalizationsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oAuthToken = null,
    Object? videoId = null,
    Object? localizations = null,
  }) {
    return _then(_value.copyWith(
      oAuthToken: null == oAuthToken
          ? _value.oAuthToken
          : oAuthToken // ignore: cast_nullable_to_non_nullable
              as String,
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      localizations: null == localizations
          ? _value.localizations
          : localizations // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, String>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetYoutubeLocalizationsDtoImplCopyWith<$Res>
    implements $SetYoutubeLocalizationsDtoCopyWith<$Res> {
  factory _$$SetYoutubeLocalizationsDtoImplCopyWith(
          _$SetYoutubeLocalizationsDtoImpl value,
          $Res Function(_$SetYoutubeLocalizationsDtoImpl) then) =
      __$$SetYoutubeLocalizationsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String oAuthToken,
      String videoId,
      Map<String, Map<String, String>> localizations});
}

/// @nodoc
class __$$SetYoutubeLocalizationsDtoImplCopyWithImpl<$Res>
    extends _$SetYoutubeLocalizationsDtoCopyWithImpl<$Res,
        _$SetYoutubeLocalizationsDtoImpl>
    implements _$$SetYoutubeLocalizationsDtoImplCopyWith<$Res> {
  __$$SetYoutubeLocalizationsDtoImplCopyWithImpl(
      _$SetYoutubeLocalizationsDtoImpl _value,
      $Res Function(_$SetYoutubeLocalizationsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oAuthToken = null,
    Object? videoId = null,
    Object? localizations = null,
  }) {
    return _then(_$SetYoutubeLocalizationsDtoImpl(
      oAuthToken: null == oAuthToken
          ? _value.oAuthToken
          : oAuthToken // ignore: cast_nullable_to_non_nullable
              as String,
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      localizations: null == localizations
          ? _value._localizations
          : localizations // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, String>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetYoutubeLocalizationsDtoImpl implements _SetYoutubeLocalizationsDto {
  const _$SetYoutubeLocalizationsDtoImpl(
      {required this.oAuthToken,
      required this.videoId,
      required final Map<String, Map<String, String>> localizations})
      : _localizations = localizations;

  factory _$SetYoutubeLocalizationsDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SetYoutubeLocalizationsDtoImplFromJson(json);

  @override
  final String oAuthToken;
  @override
  final String videoId;
  final Map<String, Map<String, String>> _localizations;
  @override
  Map<String, Map<String, String>> get localizations {
    if (_localizations is EqualUnmodifiableMapView) return _localizations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_localizations);
  }

  @override
  String toString() {
    return 'SetYoutubeLocalizationsDto(oAuthToken: $oAuthToken, videoId: $videoId, localizations: $localizations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetYoutubeLocalizationsDtoImpl &&
            (identical(other.oAuthToken, oAuthToken) ||
                other.oAuthToken == oAuthToken) &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            const DeepCollectionEquality()
                .equals(other._localizations, _localizations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, oAuthToken, videoId,
      const DeepCollectionEquality().hash(_localizations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetYoutubeLocalizationsDtoImplCopyWith<_$SetYoutubeLocalizationsDtoImpl>
      get copyWith => __$$SetYoutubeLocalizationsDtoImplCopyWithImpl<
          _$SetYoutubeLocalizationsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetYoutubeLocalizationsDtoImplToJson(
      this,
    );
  }
}

abstract class _SetYoutubeLocalizationsDto
    implements SetYoutubeLocalizationsDto {
  const factory _SetYoutubeLocalizationsDto(
          {required final String oAuthToken,
          required final String videoId,
          required final Map<String, Map<String, String>> localizations}) =
      _$SetYoutubeLocalizationsDtoImpl;

  factory _SetYoutubeLocalizationsDto.fromJson(Map<String, dynamic> json) =
      _$SetYoutubeLocalizationsDtoImpl.fromJson;

  @override
  String get oAuthToken;
  @override
  String get videoId;
  @override
  Map<String, Map<String, String>> get localizations;
  @override
  @JsonKey(ignore: true)
  _$$SetYoutubeLocalizationsDtoImplCopyWith<_$SetYoutubeLocalizationsDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
