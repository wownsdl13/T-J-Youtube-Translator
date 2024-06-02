// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_thumbnail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UploadThumbnailDto _$UploadThumbnailDtoFromJson(Map<String, dynamic> json) {
  return _UploadThumbnailDto.fromJson(json);
}

/// @nodoc
mixin _$UploadThumbnailDto {
  String get videoId => throw _privateConstructorUsedError;
  String get oAuthToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadThumbnailDtoCopyWith<UploadThumbnailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadThumbnailDtoCopyWith<$Res> {
  factory $UploadThumbnailDtoCopyWith(
          UploadThumbnailDto value, $Res Function(UploadThumbnailDto) then) =
      _$UploadThumbnailDtoCopyWithImpl<$Res, UploadThumbnailDto>;
  @useResult
  $Res call({String videoId, String oAuthToken});
}

/// @nodoc
class _$UploadThumbnailDtoCopyWithImpl<$Res, $Val extends UploadThumbnailDto>
    implements $UploadThumbnailDtoCopyWith<$Res> {
  _$UploadThumbnailDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
    Object? oAuthToken = null,
  }) {
    return _then(_value.copyWith(
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      oAuthToken: null == oAuthToken
          ? _value.oAuthToken
          : oAuthToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadThumbnailDtoImplCopyWith<$Res>
    implements $UploadThumbnailDtoCopyWith<$Res> {
  factory _$$UploadThumbnailDtoImplCopyWith(_$UploadThumbnailDtoImpl value,
          $Res Function(_$UploadThumbnailDtoImpl) then) =
      __$$UploadThumbnailDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String videoId, String oAuthToken});
}

/// @nodoc
class __$$UploadThumbnailDtoImplCopyWithImpl<$Res>
    extends _$UploadThumbnailDtoCopyWithImpl<$Res, _$UploadThumbnailDtoImpl>
    implements _$$UploadThumbnailDtoImplCopyWith<$Res> {
  __$$UploadThumbnailDtoImplCopyWithImpl(_$UploadThumbnailDtoImpl _value,
      $Res Function(_$UploadThumbnailDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
    Object? oAuthToken = null,
  }) {
    return _then(_$UploadThumbnailDtoImpl(
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      oAuthToken: null == oAuthToken
          ? _value.oAuthToken
          : oAuthToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadThumbnailDtoImpl implements _UploadThumbnailDto {
  const _$UploadThumbnailDtoImpl(
      {required this.videoId, required this.oAuthToken});

  factory _$UploadThumbnailDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadThumbnailDtoImplFromJson(json);

  @override
  final String videoId;
  @override
  final String oAuthToken;

  @override
  String toString() {
    return 'UploadThumbnailDto(videoId: $videoId, oAuthToken: $oAuthToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadThumbnailDtoImpl &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.oAuthToken, oAuthToken) ||
                other.oAuthToken == oAuthToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, videoId, oAuthToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadThumbnailDtoImplCopyWith<_$UploadThumbnailDtoImpl> get copyWith =>
      __$$UploadThumbnailDtoImplCopyWithImpl<_$UploadThumbnailDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadThumbnailDtoImplToJson(
      this,
    );
  }
}

abstract class _UploadThumbnailDto implements UploadThumbnailDto {
  const factory _UploadThumbnailDto(
      {required final String videoId,
      required final String oAuthToken}) = _$UploadThumbnailDtoImpl;

  factory _UploadThumbnailDto.fromJson(Map<String, dynamic> json) =
      _$UploadThumbnailDtoImpl.fromJson;

  @override
  String get videoId;
  @override
  String get oAuthToken;
  @override
  @JsonKey(ignore: true)
  _$$UploadThumbnailDtoImplCopyWith<_$UploadThumbnailDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
