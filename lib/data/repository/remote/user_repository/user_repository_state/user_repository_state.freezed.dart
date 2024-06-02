// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_repository_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserRepositoryState {
  UserClient get userNoneClient => throw _privateConstructorUsedError;
  UserClient get userAccessClient => throw _privateConstructorUsedError;
  UserClient get userRefreshClient => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserRepositoryStateCopyWith<UserRepositoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRepositoryStateCopyWith<$Res> {
  factory $UserRepositoryStateCopyWith(
          UserRepositoryState value, $Res Function(UserRepositoryState) then) =
      _$UserRepositoryStateCopyWithImpl<$Res, UserRepositoryState>;
  @useResult
  $Res call(
      {UserClient userNoneClient,
      UserClient userAccessClient,
      UserClient userRefreshClient});
}

/// @nodoc
class _$UserRepositoryStateCopyWithImpl<$Res, $Val extends UserRepositoryState>
    implements $UserRepositoryStateCopyWith<$Res> {
  _$UserRepositoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userNoneClient = null,
    Object? userAccessClient = null,
    Object? userRefreshClient = null,
  }) {
    return _then(_value.copyWith(
      userNoneClient: null == userNoneClient
          ? _value.userNoneClient
          : userNoneClient // ignore: cast_nullable_to_non_nullable
              as UserClient,
      userAccessClient: null == userAccessClient
          ? _value.userAccessClient
          : userAccessClient // ignore: cast_nullable_to_non_nullable
              as UserClient,
      userRefreshClient: null == userRefreshClient
          ? _value.userRefreshClient
          : userRefreshClient // ignore: cast_nullable_to_non_nullable
              as UserClient,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRepositoryStateImplCopyWith<$Res>
    implements $UserRepositoryStateCopyWith<$Res> {
  factory _$$UserRepositoryStateImplCopyWith(_$UserRepositoryStateImpl value,
          $Res Function(_$UserRepositoryStateImpl) then) =
      __$$UserRepositoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserClient userNoneClient,
      UserClient userAccessClient,
      UserClient userRefreshClient});
}

/// @nodoc
class __$$UserRepositoryStateImplCopyWithImpl<$Res>
    extends _$UserRepositoryStateCopyWithImpl<$Res, _$UserRepositoryStateImpl>
    implements _$$UserRepositoryStateImplCopyWith<$Res> {
  __$$UserRepositoryStateImplCopyWithImpl(_$UserRepositoryStateImpl _value,
      $Res Function(_$UserRepositoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userNoneClient = null,
    Object? userAccessClient = null,
    Object? userRefreshClient = null,
  }) {
    return _then(_$UserRepositoryStateImpl(
      userNoneClient: null == userNoneClient
          ? _value.userNoneClient
          : userNoneClient // ignore: cast_nullable_to_non_nullable
              as UserClient,
      userAccessClient: null == userAccessClient
          ? _value.userAccessClient
          : userAccessClient // ignore: cast_nullable_to_non_nullable
              as UserClient,
      userRefreshClient: null == userRefreshClient
          ? _value.userRefreshClient
          : userRefreshClient // ignore: cast_nullable_to_non_nullable
              as UserClient,
    ));
  }
}

/// @nodoc

class _$UserRepositoryStateImpl extends _UserRepositoryState {
  const _$UserRepositoryStateImpl(
      {required this.userNoneClient,
      required this.userAccessClient,
      required this.userRefreshClient})
      : super._();

  @override
  final UserClient userNoneClient;
  @override
  final UserClient userAccessClient;
  @override
  final UserClient userRefreshClient;

  @override
  String toString() {
    return 'UserRepositoryState(userNoneClient: $userNoneClient, userAccessClient: $userAccessClient, userRefreshClient: $userRefreshClient)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRepositoryStateImpl &&
            (identical(other.userNoneClient, userNoneClient) ||
                other.userNoneClient == userNoneClient) &&
            (identical(other.userAccessClient, userAccessClient) ||
                other.userAccessClient == userAccessClient) &&
            (identical(other.userRefreshClient, userRefreshClient) ||
                other.userRefreshClient == userRefreshClient));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, userNoneClient, userAccessClient, userRefreshClient);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRepositoryStateImplCopyWith<_$UserRepositoryStateImpl> get copyWith =>
      __$$UserRepositoryStateImplCopyWithImpl<_$UserRepositoryStateImpl>(
          this, _$identity);
}

abstract class _UserRepositoryState extends UserRepositoryState {
  const factory _UserRepositoryState(
      {required final UserClient userNoneClient,
      required final UserClient userAccessClient,
      required final UserClient userRefreshClient}) = _$UserRepositoryStateImpl;
  const _UserRepositoryState._() : super._();

  @override
  UserClient get userNoneClient;
  @override
  UserClient get userAccessClient;
  @override
  UserClient get userRefreshClient;
  @override
  @JsonKey(ignore: true)
  _$$UserRepositoryStateImplCopyWith<_$UserRepositoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
