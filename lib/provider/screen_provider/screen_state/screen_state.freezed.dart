// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScreenState {
  ScreenType get screenType => throw _privateConstructorUsedError;
  GoogleSignInAccount? get googleId => throw _privateConstructorUsedError;
  UserRepositoryState get userRepositoryState =>
      throw _privateConstructorUsedError;
  String get languageCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScreenStateCopyWith<ScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenStateCopyWith<$Res> {
  factory $ScreenStateCopyWith(
          ScreenState value, $Res Function(ScreenState) then) =
      _$ScreenStateCopyWithImpl<$Res, ScreenState>;
  @useResult
  $Res call(
      {ScreenType screenType,
      GoogleSignInAccount? googleId,
      UserRepositoryState userRepositoryState,
      String languageCode});

  $UserRepositoryStateCopyWith<$Res> get userRepositoryState;
}

/// @nodoc
class _$ScreenStateCopyWithImpl<$Res, $Val extends ScreenState>
    implements $ScreenStateCopyWith<$Res> {
  _$ScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenType = null,
    Object? googleId = freezed,
    Object? userRepositoryState = null,
    Object? languageCode = null,
  }) {
    return _then(_value.copyWith(
      screenType: null == screenType
          ? _value.screenType
          : screenType // ignore: cast_nullable_to_non_nullable
              as ScreenType,
      googleId: freezed == googleId
          ? _value.googleId
          : googleId // ignore: cast_nullable_to_non_nullable
              as GoogleSignInAccount?,
      userRepositoryState: null == userRepositoryState
          ? _value.userRepositoryState
          : userRepositoryState // ignore: cast_nullable_to_non_nullable
              as UserRepositoryState,
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserRepositoryStateCopyWith<$Res> get userRepositoryState {
    return $UserRepositoryStateCopyWith<$Res>(_value.userRepositoryState,
        (value) {
      return _then(_value.copyWith(userRepositoryState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScreenStateImplCopyWith<$Res>
    implements $ScreenStateCopyWith<$Res> {
  factory _$$ScreenStateImplCopyWith(
          _$ScreenStateImpl value, $Res Function(_$ScreenStateImpl) then) =
      __$$ScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ScreenType screenType,
      GoogleSignInAccount? googleId,
      UserRepositoryState userRepositoryState,
      String languageCode});

  @override
  $UserRepositoryStateCopyWith<$Res> get userRepositoryState;
}

/// @nodoc
class __$$ScreenStateImplCopyWithImpl<$Res>
    extends _$ScreenStateCopyWithImpl<$Res, _$ScreenStateImpl>
    implements _$$ScreenStateImplCopyWith<$Res> {
  __$$ScreenStateImplCopyWithImpl(
      _$ScreenStateImpl _value, $Res Function(_$ScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenType = null,
    Object? googleId = freezed,
    Object? userRepositoryState = null,
    Object? languageCode = null,
  }) {
    return _then(_$ScreenStateImpl(
      screenType: null == screenType
          ? _value.screenType
          : screenType // ignore: cast_nullable_to_non_nullable
              as ScreenType,
      googleId: freezed == googleId
          ? _value.googleId
          : googleId // ignore: cast_nullable_to_non_nullable
              as GoogleSignInAccount?,
      userRepositoryState: null == userRepositoryState
          ? _value.userRepositoryState
          : userRepositoryState // ignore: cast_nullable_to_non_nullable
              as UserRepositoryState,
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ScreenStateImpl extends _ScreenState {
  const _$ScreenStateImpl(
      {this.screenType = ScreenType.translator,
      this.googleId,
      required this.userRepositoryState,
      required this.languageCode})
      : super._();

  @override
  @JsonKey()
  final ScreenType screenType;
  @override
  final GoogleSignInAccount? googleId;
  @override
  final UserRepositoryState userRepositoryState;
  @override
  final String languageCode;

  @override
  String toString() {
    return 'ScreenState(screenType: $screenType, googleId: $googleId, userRepositoryState: $userRepositoryState, languageCode: $languageCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScreenStateImpl &&
            (identical(other.screenType, screenType) ||
                other.screenType == screenType) &&
            (identical(other.googleId, googleId) ||
                other.googleId == googleId) &&
            (identical(other.userRepositoryState, userRepositoryState) ||
                other.userRepositoryState == userRepositoryState) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, screenType, googleId, userRepositoryState, languageCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScreenStateImplCopyWith<_$ScreenStateImpl> get copyWith =>
      __$$ScreenStateImplCopyWithImpl<_$ScreenStateImpl>(this, _$identity);
}

abstract class _ScreenState extends ScreenState {
  const factory _ScreenState(
      {final ScreenType screenType,
      final GoogleSignInAccount? googleId,
      required final UserRepositoryState userRepositoryState,
      required final String languageCode}) = _$ScreenStateImpl;
  const _ScreenState._() : super._();

  @override
  ScreenType get screenType;
  @override
  GoogleSignInAccount? get googleId;
  @override
  UserRepositoryState get userRepositoryState;
  @override
  String get languageCode;
  @override
  @JsonKey(ignore: true)
  _$$ScreenStateImplCopyWith<_$ScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
