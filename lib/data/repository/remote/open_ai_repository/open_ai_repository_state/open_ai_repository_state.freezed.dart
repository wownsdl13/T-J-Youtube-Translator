// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_ai_repository_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OpenAiRepositoryState {
  OpenAiClient get client => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OpenAiRepositoryStateCopyWith<OpenAiRepositoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenAiRepositoryStateCopyWith<$Res> {
  factory $OpenAiRepositoryStateCopyWith(OpenAiRepositoryState value,
          $Res Function(OpenAiRepositoryState) then) =
      _$OpenAiRepositoryStateCopyWithImpl<$Res, OpenAiRepositoryState>;
  @useResult
  $Res call({OpenAiClient client});
}

/// @nodoc
class _$OpenAiRepositoryStateCopyWithImpl<$Res,
        $Val extends OpenAiRepositoryState>
    implements $OpenAiRepositoryStateCopyWith<$Res> {
  _$OpenAiRepositoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = null,
  }) {
    return _then(_value.copyWith(
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as OpenAiClient,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenAiRepositoryStateImplCopyWith<$Res>
    implements $OpenAiRepositoryStateCopyWith<$Res> {
  factory _$$OpenAiRepositoryStateImplCopyWith(
          _$OpenAiRepositoryStateImpl value,
          $Res Function(_$OpenAiRepositoryStateImpl) then) =
      __$$OpenAiRepositoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OpenAiClient client});
}

/// @nodoc
class __$$OpenAiRepositoryStateImplCopyWithImpl<$Res>
    extends _$OpenAiRepositoryStateCopyWithImpl<$Res,
        _$OpenAiRepositoryStateImpl>
    implements _$$OpenAiRepositoryStateImplCopyWith<$Res> {
  __$$OpenAiRepositoryStateImplCopyWithImpl(_$OpenAiRepositoryStateImpl _value,
      $Res Function(_$OpenAiRepositoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = null,
  }) {
    return _then(_$OpenAiRepositoryStateImpl(
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as OpenAiClient,
    ));
  }
}

/// @nodoc

class _$OpenAiRepositoryStateImpl extends _OpenAiRepositoryState {
  const _$OpenAiRepositoryStateImpl({required this.client}) : super._();

  @override
  final OpenAiClient client;

  @override
  String toString() {
    return 'OpenAiRepositoryState(client: $client)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenAiRepositoryStateImpl &&
            (identical(other.client, client) || other.client == client));
  }

  @override
  int get hashCode => Object.hash(runtimeType, client);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenAiRepositoryStateImplCopyWith<_$OpenAiRepositoryStateImpl>
      get copyWith => __$$OpenAiRepositoryStateImplCopyWithImpl<
          _$OpenAiRepositoryStateImpl>(this, _$identity);
}

abstract class _OpenAiRepositoryState extends OpenAiRepositoryState {
  const factory _OpenAiRepositoryState({required final OpenAiClient client}) =
      _$OpenAiRepositoryStateImpl;
  const _OpenAiRepositoryState._() : super._();

  @override
  OpenAiClient get client;
  @override
  @JsonKey(ignore: true)
  _$$OpenAiRepositoryStateImplCopyWith<_$OpenAiRepositoryStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
