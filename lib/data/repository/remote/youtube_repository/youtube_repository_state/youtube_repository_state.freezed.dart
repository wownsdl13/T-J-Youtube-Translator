// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'youtube_repository_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$YoutubeRepositoryState {
  YoutubeClient get youtubeClient => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $YoutubeRepositoryStateCopyWith<YoutubeRepositoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeRepositoryStateCopyWith<$Res> {
  factory $YoutubeRepositoryStateCopyWith(YoutubeRepositoryState value,
          $Res Function(YoutubeRepositoryState) then) =
      _$YoutubeRepositoryStateCopyWithImpl<$Res, YoutubeRepositoryState>;
  @useResult
  $Res call({YoutubeClient youtubeClient});
}

/// @nodoc
class _$YoutubeRepositoryStateCopyWithImpl<$Res,
        $Val extends YoutubeRepositoryState>
    implements $YoutubeRepositoryStateCopyWith<$Res> {
  _$YoutubeRepositoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? youtubeClient = null,
  }) {
    return _then(_value.copyWith(
      youtubeClient: null == youtubeClient
          ? _value.youtubeClient
          : youtubeClient // ignore: cast_nullable_to_non_nullable
              as YoutubeClient,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$YoutubeRepositoryStateImplCopyWith<$Res>
    implements $YoutubeRepositoryStateCopyWith<$Res> {
  factory _$$YoutubeRepositoryStateImplCopyWith(
          _$YoutubeRepositoryStateImpl value,
          $Res Function(_$YoutubeRepositoryStateImpl) then) =
      __$$YoutubeRepositoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({YoutubeClient youtubeClient});
}

/// @nodoc
class __$$YoutubeRepositoryStateImplCopyWithImpl<$Res>
    extends _$YoutubeRepositoryStateCopyWithImpl<$Res,
        _$YoutubeRepositoryStateImpl>
    implements _$$YoutubeRepositoryStateImplCopyWith<$Res> {
  __$$YoutubeRepositoryStateImplCopyWithImpl(
      _$YoutubeRepositoryStateImpl _value,
      $Res Function(_$YoutubeRepositoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? youtubeClient = null,
  }) {
    return _then(_$YoutubeRepositoryStateImpl(
      youtubeClient: null == youtubeClient
          ? _value.youtubeClient
          : youtubeClient // ignore: cast_nullable_to_non_nullable
              as YoutubeClient,
    ));
  }
}

/// @nodoc

class _$YoutubeRepositoryStateImpl implements _YoutubeRepositoryState {
  const _$YoutubeRepositoryStateImpl({required this.youtubeClient});

  @override
  final YoutubeClient youtubeClient;

  @override
  String toString() {
    return 'YoutubeRepositoryState(youtubeClient: $youtubeClient)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YoutubeRepositoryStateImpl &&
            (identical(other.youtubeClient, youtubeClient) ||
                other.youtubeClient == youtubeClient));
  }

  @override
  int get hashCode => Object.hash(runtimeType, youtubeClient);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YoutubeRepositoryStateImplCopyWith<_$YoutubeRepositoryStateImpl>
      get copyWith => __$$YoutubeRepositoryStateImplCopyWithImpl<
          _$YoutubeRepositoryStateImpl>(this, _$identity);
}

abstract class _YoutubeRepositoryState implements YoutubeRepositoryState {
  const factory _YoutubeRepositoryState(
          {required final YoutubeClient youtubeClient}) =
      _$YoutubeRepositoryStateImpl;

  @override
  YoutubeClient get youtubeClient;
  @override
  @JsonKey(ignore: true)
  _$$YoutubeRepositoryStateImplCopyWith<_$YoutubeRepositoryStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
