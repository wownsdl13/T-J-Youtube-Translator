// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_youtube_api_key_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateYoutubeApiKeyDto _$UpdateYoutubeApiKeyDtoFromJson(
    Map<String, dynamic> json) {
  return _UpdateYoutubeApiKeyDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateYoutubeApiKeyDto {
  String get key => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateYoutubeApiKeyDtoCopyWith<UpdateYoutubeApiKeyDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateYoutubeApiKeyDtoCopyWith<$Res> {
  factory $UpdateYoutubeApiKeyDtoCopyWith(UpdateYoutubeApiKeyDto value,
          $Res Function(UpdateYoutubeApiKeyDto) then) =
      _$UpdateYoutubeApiKeyDtoCopyWithImpl<$Res, UpdateYoutubeApiKeyDto>;
  @useResult
  $Res call({String key});
}

/// @nodoc
class _$UpdateYoutubeApiKeyDtoCopyWithImpl<$Res,
        $Val extends UpdateYoutubeApiKeyDto>
    implements $UpdateYoutubeApiKeyDtoCopyWith<$Res> {
  _$UpdateYoutubeApiKeyDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateYoutubeApiKeyDtoImplCopyWith<$Res>
    implements $UpdateYoutubeApiKeyDtoCopyWith<$Res> {
  factory _$$UpdateYoutubeApiKeyDtoImplCopyWith(
          _$UpdateYoutubeApiKeyDtoImpl value,
          $Res Function(_$UpdateYoutubeApiKeyDtoImpl) then) =
      __$$UpdateYoutubeApiKeyDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key});
}

/// @nodoc
class __$$UpdateYoutubeApiKeyDtoImplCopyWithImpl<$Res>
    extends _$UpdateYoutubeApiKeyDtoCopyWithImpl<$Res,
        _$UpdateYoutubeApiKeyDtoImpl>
    implements _$$UpdateYoutubeApiKeyDtoImplCopyWith<$Res> {
  __$$UpdateYoutubeApiKeyDtoImplCopyWithImpl(
      _$UpdateYoutubeApiKeyDtoImpl _value,
      $Res Function(_$UpdateYoutubeApiKeyDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
  }) {
    return _then(_$UpdateYoutubeApiKeyDtoImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateYoutubeApiKeyDtoImpl implements _UpdateYoutubeApiKeyDto {
  const _$UpdateYoutubeApiKeyDtoImpl({required this.key});

  factory _$UpdateYoutubeApiKeyDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateYoutubeApiKeyDtoImplFromJson(json);

  @override
  final String key;

  @override
  String toString() {
    return 'UpdateYoutubeApiKeyDto(key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateYoutubeApiKeyDtoImpl &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateYoutubeApiKeyDtoImplCopyWith<_$UpdateYoutubeApiKeyDtoImpl>
      get copyWith => __$$UpdateYoutubeApiKeyDtoImplCopyWithImpl<
          _$UpdateYoutubeApiKeyDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateYoutubeApiKeyDtoImplToJson(
      this,
    );
  }
}

abstract class _UpdateYoutubeApiKeyDto implements UpdateYoutubeApiKeyDto {
  const factory _UpdateYoutubeApiKeyDto({required final String key}) =
      _$UpdateYoutubeApiKeyDtoImpl;

  factory _UpdateYoutubeApiKeyDto.fromJson(Map<String, dynamic> json) =
      _$UpdateYoutubeApiKeyDtoImpl.fromJson;

  @override
  String get key;
  @override
  @JsonKey(ignore: true)
  _$$UpdateYoutubeApiKeyDtoImplCopyWith<_$UpdateYoutubeApiKeyDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
