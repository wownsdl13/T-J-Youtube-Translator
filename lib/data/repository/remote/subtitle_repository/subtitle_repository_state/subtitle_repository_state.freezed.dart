// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subtitle_repository_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubtitleRepositoryState {
  SubtitleClient get subtitleClient => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubtitleRepositoryStateCopyWith<SubtitleRepositoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubtitleRepositoryStateCopyWith<$Res> {
  factory $SubtitleRepositoryStateCopyWith(SubtitleRepositoryState value,
          $Res Function(SubtitleRepositoryState) then) =
      _$SubtitleRepositoryStateCopyWithImpl<$Res, SubtitleRepositoryState>;
  @useResult
  $Res call({SubtitleClient subtitleClient});
}

/// @nodoc
class _$SubtitleRepositoryStateCopyWithImpl<$Res,
        $Val extends SubtitleRepositoryState>
    implements $SubtitleRepositoryStateCopyWith<$Res> {
  _$SubtitleRepositoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtitleClient = null,
  }) {
    return _then(_value.copyWith(
      subtitleClient: null == subtitleClient
          ? _value.subtitleClient
          : subtitleClient // ignore: cast_nullable_to_non_nullable
              as SubtitleClient,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubtitleRepositoryStateImplCopyWith<$Res>
    implements $SubtitleRepositoryStateCopyWith<$Res> {
  factory _$$SubtitleRepositoryStateImplCopyWith(
          _$SubtitleRepositoryStateImpl value,
          $Res Function(_$SubtitleRepositoryStateImpl) then) =
      __$$SubtitleRepositoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SubtitleClient subtitleClient});
}

/// @nodoc
class __$$SubtitleRepositoryStateImplCopyWithImpl<$Res>
    extends _$SubtitleRepositoryStateCopyWithImpl<$Res,
        _$SubtitleRepositoryStateImpl>
    implements _$$SubtitleRepositoryStateImplCopyWith<$Res> {
  __$$SubtitleRepositoryStateImplCopyWithImpl(
      _$SubtitleRepositoryStateImpl _value,
      $Res Function(_$SubtitleRepositoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtitleClient = null,
  }) {
    return _then(_$SubtitleRepositoryStateImpl(
      subtitleClient: null == subtitleClient
          ? _value.subtitleClient
          : subtitleClient // ignore: cast_nullable_to_non_nullable
              as SubtitleClient,
    ));
  }
}

/// @nodoc

class _$SubtitleRepositoryStateImpl extends _SubtitleRepositoryState {
  const _$SubtitleRepositoryStateImpl({required this.subtitleClient})
      : super._();

  @override
  final SubtitleClient subtitleClient;

  @override
  String toString() {
    return 'SubtitleRepositoryState(subtitleClient: $subtitleClient)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubtitleRepositoryStateImpl &&
            (identical(other.subtitleClient, subtitleClient) ||
                other.subtitleClient == subtitleClient));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subtitleClient);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubtitleRepositoryStateImplCopyWith<_$SubtitleRepositoryStateImpl>
      get copyWith => __$$SubtitleRepositoryStateImplCopyWithImpl<
          _$SubtitleRepositoryStateImpl>(this, _$identity);
}

abstract class _SubtitleRepositoryState extends SubtitleRepositoryState {
  const factory _SubtitleRepositoryState(
          {required final SubtitleClient subtitleClient}) =
      _$SubtitleRepositoryStateImpl;
  const _SubtitleRepositoryState._() : super._();

  @override
  SubtitleClient get subtitleClient;
  @override
  @JsonKey(ignore: true)
  _$$SubtitleRepositoryStateImplCopyWith<_$SubtitleRepositoryStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
