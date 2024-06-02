// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_comment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostCommentDto _$PostCommentDtoFromJson(Map<String, dynamic> json) {
  return _PostCommentDto.fromJson(json);
}

/// @nodoc
mixin _$PostCommentDto {
  String get oAuthToken => throw _privateConstructorUsedError;
  String get videoId => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCommentDtoCopyWith<PostCommentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCommentDtoCopyWith<$Res> {
  factory $PostCommentDtoCopyWith(
          PostCommentDto value, $Res Function(PostCommentDto) then) =
      _$PostCommentDtoCopyWithImpl<$Res, PostCommentDto>;
  @useResult
  $Res call({String oAuthToken, String videoId, String text});
}

/// @nodoc
class _$PostCommentDtoCopyWithImpl<$Res, $Val extends PostCommentDto>
    implements $PostCommentDtoCopyWith<$Res> {
  _$PostCommentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oAuthToken = null,
    Object? videoId = null,
    Object? text = null,
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
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostCommentDtoImplCopyWith<$Res>
    implements $PostCommentDtoCopyWith<$Res> {
  factory _$$PostCommentDtoImplCopyWith(_$PostCommentDtoImpl value,
          $Res Function(_$PostCommentDtoImpl) then) =
      __$$PostCommentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String oAuthToken, String videoId, String text});
}

/// @nodoc
class __$$PostCommentDtoImplCopyWithImpl<$Res>
    extends _$PostCommentDtoCopyWithImpl<$Res, _$PostCommentDtoImpl>
    implements _$$PostCommentDtoImplCopyWith<$Res> {
  __$$PostCommentDtoImplCopyWithImpl(
      _$PostCommentDtoImpl _value, $Res Function(_$PostCommentDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oAuthToken = null,
    Object? videoId = null,
    Object? text = null,
  }) {
    return _then(_$PostCommentDtoImpl(
      oAuthToken: null == oAuthToken
          ? _value.oAuthToken
          : oAuthToken // ignore: cast_nullable_to_non_nullable
              as String,
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostCommentDtoImpl implements _PostCommentDto {
  const _$PostCommentDtoImpl(
      {required this.oAuthToken, required this.videoId, required this.text});

  factory _$PostCommentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostCommentDtoImplFromJson(json);

  @override
  final String oAuthToken;
  @override
  final String videoId;
  @override
  final String text;

  @override
  String toString() {
    return 'PostCommentDto(oAuthToken: $oAuthToken, videoId: $videoId, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostCommentDtoImpl &&
            (identical(other.oAuthToken, oAuthToken) ||
                other.oAuthToken == oAuthToken) &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, oAuthToken, videoId, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostCommentDtoImplCopyWith<_$PostCommentDtoImpl> get copyWith =>
      __$$PostCommentDtoImplCopyWithImpl<_$PostCommentDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostCommentDtoImplToJson(
      this,
    );
  }
}

abstract class _PostCommentDto implements PostCommentDto {
  const factory _PostCommentDto(
      {required final String oAuthToken,
      required final String videoId,
      required final String text}) = _$PostCommentDtoImpl;

  factory _PostCommentDto.fromJson(Map<String, dynamic> json) =
      _$PostCommentDtoImpl.fromJson;

  @override
  String get oAuthToken;
  @override
  String get videoId;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$PostCommentDtoImplCopyWith<_$PostCommentDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
