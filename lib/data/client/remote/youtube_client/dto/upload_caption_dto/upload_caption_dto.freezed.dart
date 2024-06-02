// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_caption_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UploadCaptionDto _$UploadCaptionDtoFromJson(Map<String, dynamic> json) {
  return _UploadCaptionDto.fromJson(json);
}

/// @nodoc
mixin _$UploadCaptionDto {
  String get oAuthToken => throw _privateConstructorUsedError;
  String get videoId => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get srt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadCaptionDtoCopyWith<UploadCaptionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadCaptionDtoCopyWith<$Res> {
  factory $UploadCaptionDtoCopyWith(
          UploadCaptionDto value, $Res Function(UploadCaptionDto) then) =
      _$UploadCaptionDtoCopyWithImpl<$Res, UploadCaptionDto>;
  @useResult
  $Res call({String oAuthToken, String videoId, String language, String srt});
}

/// @nodoc
class _$UploadCaptionDtoCopyWithImpl<$Res, $Val extends UploadCaptionDto>
    implements $UploadCaptionDtoCopyWith<$Res> {
  _$UploadCaptionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oAuthToken = null,
    Object? videoId = null,
    Object? language = null,
    Object? srt = null,
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
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      srt: null == srt
          ? _value.srt
          : srt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadCaptionDtoImplCopyWith<$Res>
    implements $UploadCaptionDtoCopyWith<$Res> {
  factory _$$UploadCaptionDtoImplCopyWith(_$UploadCaptionDtoImpl value,
          $Res Function(_$UploadCaptionDtoImpl) then) =
      __$$UploadCaptionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String oAuthToken, String videoId, String language, String srt});
}

/// @nodoc
class __$$UploadCaptionDtoImplCopyWithImpl<$Res>
    extends _$UploadCaptionDtoCopyWithImpl<$Res, _$UploadCaptionDtoImpl>
    implements _$$UploadCaptionDtoImplCopyWith<$Res> {
  __$$UploadCaptionDtoImplCopyWithImpl(_$UploadCaptionDtoImpl _value,
      $Res Function(_$UploadCaptionDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oAuthToken = null,
    Object? videoId = null,
    Object? language = null,
    Object? srt = null,
  }) {
    return _then(_$UploadCaptionDtoImpl(
      oAuthToken: null == oAuthToken
          ? _value.oAuthToken
          : oAuthToken // ignore: cast_nullable_to_non_nullable
              as String,
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      srt: null == srt
          ? _value.srt
          : srt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadCaptionDtoImpl implements _UploadCaptionDto {
  const _$UploadCaptionDtoImpl(
      {required this.oAuthToken,
      required this.videoId,
      required this.language,
      required this.srt});

  factory _$UploadCaptionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadCaptionDtoImplFromJson(json);

  @override
  final String oAuthToken;
  @override
  final String videoId;
  @override
  final String language;
  @override
  final String srt;

  @override
  String toString() {
    return 'UploadCaptionDto(oAuthToken: $oAuthToken, videoId: $videoId, language: $language, srt: $srt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadCaptionDtoImpl &&
            (identical(other.oAuthToken, oAuthToken) ||
                other.oAuthToken == oAuthToken) &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.srt, srt) || other.srt == srt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, oAuthToken, videoId, language, srt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadCaptionDtoImplCopyWith<_$UploadCaptionDtoImpl> get copyWith =>
      __$$UploadCaptionDtoImplCopyWithImpl<_$UploadCaptionDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadCaptionDtoImplToJson(
      this,
    );
  }
}

abstract class _UploadCaptionDto implements UploadCaptionDto {
  const factory _UploadCaptionDto(
      {required final String oAuthToken,
      required final String videoId,
      required final String language,
      required final String srt}) = _$UploadCaptionDtoImpl;

  factory _UploadCaptionDto.fromJson(Map<String, dynamic> json) =
      _$UploadCaptionDtoImpl.fromJson;

  @override
  String get oAuthToken;
  @override
  String get videoId;
  @override
  String get language;
  @override
  String get srt;
  @override
  @JsonKey(ignore: true)
  _$$UploadCaptionDtoImplCopyWith<_$UploadCaptionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
