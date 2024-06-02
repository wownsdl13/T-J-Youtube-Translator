// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_refresh_token_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetRefreshTokenDto _$GetRefreshTokenDtoFromJson(Map<String, dynamic> json) {
  return _GetRefreshTokenDto.fromJson(json);
}

/// @nodoc
mixin _$GetRefreshTokenDto {
  String get accessToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetRefreshTokenDtoCopyWith<GetRefreshTokenDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRefreshTokenDtoCopyWith<$Res> {
  factory $GetRefreshTokenDtoCopyWith(
          GetRefreshTokenDto value, $Res Function(GetRefreshTokenDto) then) =
      _$GetRefreshTokenDtoCopyWithImpl<$Res, GetRefreshTokenDto>;
  @useResult
  $Res call({String accessToken});
}

/// @nodoc
class _$GetRefreshTokenDtoCopyWithImpl<$Res, $Val extends GetRefreshTokenDto>
    implements $GetRefreshTokenDtoCopyWith<$Res> {
  _$GetRefreshTokenDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetRefreshTokenDtoImplCopyWith<$Res>
    implements $GetRefreshTokenDtoCopyWith<$Res> {
  factory _$$GetRefreshTokenDtoImplCopyWith(_$GetRefreshTokenDtoImpl value,
          $Res Function(_$GetRefreshTokenDtoImpl) then) =
      __$$GetRefreshTokenDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken});
}

/// @nodoc
class __$$GetRefreshTokenDtoImplCopyWithImpl<$Res>
    extends _$GetRefreshTokenDtoCopyWithImpl<$Res, _$GetRefreshTokenDtoImpl>
    implements _$$GetRefreshTokenDtoImplCopyWith<$Res> {
  __$$GetRefreshTokenDtoImplCopyWithImpl(_$GetRefreshTokenDtoImpl _value,
      $Res Function(_$GetRefreshTokenDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
  }) {
    return _then(_$GetRefreshTokenDtoImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetRefreshTokenDtoImpl implements _GetRefreshTokenDto {
  const _$GetRefreshTokenDtoImpl({required this.accessToken});

  factory _$GetRefreshTokenDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetRefreshTokenDtoImplFromJson(json);

  @override
  final String accessToken;

  @override
  String toString() {
    return 'GetRefreshTokenDto(accessToken: $accessToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRefreshTokenDtoImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRefreshTokenDtoImplCopyWith<_$GetRefreshTokenDtoImpl> get copyWith =>
      __$$GetRefreshTokenDtoImplCopyWithImpl<_$GetRefreshTokenDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetRefreshTokenDtoImplToJson(
      this,
    );
  }
}

abstract class _GetRefreshTokenDto implements GetRefreshTokenDto {
  const factory _GetRefreshTokenDto({required final String accessToken}) =
      _$GetRefreshTokenDtoImpl;

  factory _GetRefreshTokenDto.fromJson(Map<String, dynamic> json) =
      _$GetRefreshTokenDtoImpl.fromJson;

  @override
  String get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$GetRefreshTokenDtoImplCopyWith<_$GetRefreshTokenDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
