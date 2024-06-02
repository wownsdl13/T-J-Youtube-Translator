// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_open_ai_api_key_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateOpenAiApiKeyDto _$UpdateOpenAiApiKeyDtoFromJson(
    Map<String, dynamic> json) {
  return _UpdateOpenAiApiKeyDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateOpenAiApiKeyDto {
  String get key => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateOpenAiApiKeyDtoCopyWith<UpdateOpenAiApiKeyDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateOpenAiApiKeyDtoCopyWith<$Res> {
  factory $UpdateOpenAiApiKeyDtoCopyWith(UpdateOpenAiApiKeyDto value,
          $Res Function(UpdateOpenAiApiKeyDto) then) =
      _$UpdateOpenAiApiKeyDtoCopyWithImpl<$Res, UpdateOpenAiApiKeyDto>;
  @useResult
  $Res call({String key});
}

/// @nodoc
class _$UpdateOpenAiApiKeyDtoCopyWithImpl<$Res,
        $Val extends UpdateOpenAiApiKeyDto>
    implements $UpdateOpenAiApiKeyDtoCopyWith<$Res> {
  _$UpdateOpenAiApiKeyDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$UpdateOpenAiApiKeyDtoImplCopyWith<$Res>
    implements $UpdateOpenAiApiKeyDtoCopyWith<$Res> {
  factory _$$UpdateOpenAiApiKeyDtoImplCopyWith(
          _$UpdateOpenAiApiKeyDtoImpl value,
          $Res Function(_$UpdateOpenAiApiKeyDtoImpl) then) =
      __$$UpdateOpenAiApiKeyDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key});
}

/// @nodoc
class __$$UpdateOpenAiApiKeyDtoImplCopyWithImpl<$Res>
    extends _$UpdateOpenAiApiKeyDtoCopyWithImpl<$Res,
        _$UpdateOpenAiApiKeyDtoImpl>
    implements _$$UpdateOpenAiApiKeyDtoImplCopyWith<$Res> {
  __$$UpdateOpenAiApiKeyDtoImplCopyWithImpl(_$UpdateOpenAiApiKeyDtoImpl _value,
      $Res Function(_$UpdateOpenAiApiKeyDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
  }) {
    return _then(_$UpdateOpenAiApiKeyDtoImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateOpenAiApiKeyDtoImpl implements _UpdateOpenAiApiKeyDto {
  const _$UpdateOpenAiApiKeyDtoImpl({required this.key});

  factory _$UpdateOpenAiApiKeyDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateOpenAiApiKeyDtoImplFromJson(json);

  @override
  final String key;

  @override
  String toString() {
    return 'UpdateOpenAiApiKeyDto(key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateOpenAiApiKeyDtoImpl &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateOpenAiApiKeyDtoImplCopyWith<_$UpdateOpenAiApiKeyDtoImpl>
      get copyWith => __$$UpdateOpenAiApiKeyDtoImplCopyWithImpl<
          _$UpdateOpenAiApiKeyDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateOpenAiApiKeyDtoImplToJson(
      this,
    );
  }
}

abstract class _UpdateOpenAiApiKeyDto implements UpdateOpenAiApiKeyDto {
  const factory _UpdateOpenAiApiKeyDto({required final String key}) =
      _$UpdateOpenAiApiKeyDtoImpl;

  factory _UpdateOpenAiApiKeyDto.fromJson(Map<String, dynamic> json) =
      _$UpdateOpenAiApiKeyDtoImpl.fromJson;

  @override
  String get key;
  @override
  @JsonKey(ignore: true)
  _$$UpdateOpenAiApiKeyDtoImplCopyWith<_$UpdateOpenAiApiKeyDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
