// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'util_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UtilState {
  LoadingText? get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UtilStateCopyWith<UtilState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UtilStateCopyWith<$Res> {
  factory $UtilStateCopyWith(UtilState value, $Res Function(UtilState) then) =
      _$UtilStateCopyWithImpl<$Res, UtilState>;
  @useResult
  $Res call({LoadingText? loading});
}

/// @nodoc
class _$UtilStateCopyWithImpl<$Res, $Val extends UtilState>
    implements $UtilStateCopyWith<$Res> {
  _$UtilStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = freezed,
  }) {
    return _then(_value.copyWith(
      loading: freezed == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as LoadingText?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UtilStateImplCopyWith<$Res>
    implements $UtilStateCopyWith<$Res> {
  factory _$$UtilStateImplCopyWith(
          _$UtilStateImpl value, $Res Function(_$UtilStateImpl) then) =
      __$$UtilStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoadingText? loading});
}

/// @nodoc
class __$$UtilStateImplCopyWithImpl<$Res>
    extends _$UtilStateCopyWithImpl<$Res, _$UtilStateImpl>
    implements _$$UtilStateImplCopyWith<$Res> {
  __$$UtilStateImplCopyWithImpl(
      _$UtilStateImpl _value, $Res Function(_$UtilStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = freezed,
  }) {
    return _then(_$UtilStateImpl(
      loading: freezed == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as LoadingText?,
    ));
  }
}

/// @nodoc

class _$UtilStateImpl implements _UtilState {
  const _$UtilStateImpl({this.loading});

  @override
  final LoadingText? loading;

  @override
  String toString() {
    return 'UtilState(loading: $loading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UtilStateImpl &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UtilStateImplCopyWith<_$UtilStateImpl> get copyWith =>
      __$$UtilStateImplCopyWithImpl<_$UtilStateImpl>(this, _$identity);
}

abstract class _UtilState implements UtilState {
  const factory _UtilState({final LoadingText? loading}) = _$UtilStateImpl;

  @override
  LoadingText? get loading;
  @override
  @JsonKey(ignore: true)
  _$$UtilStateImplCopyWith<_$UtilStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
