// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translate_repository_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TranslateRepositoryState {
  String get chatGPTUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TranslateRepositoryStateCopyWith<TranslateRepositoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslateRepositoryStateCopyWith<$Res> {
  factory $TranslateRepositoryStateCopyWith(TranslateRepositoryState value,
          $Res Function(TranslateRepositoryState) then) =
      _$TranslateRepositoryStateCopyWithImpl<$Res, TranslateRepositoryState>;
  @useResult
  $Res call({String chatGPTUrl});
}

/// @nodoc
class _$TranslateRepositoryStateCopyWithImpl<$Res,
        $Val extends TranslateRepositoryState>
    implements $TranslateRepositoryStateCopyWith<$Res> {
  _$TranslateRepositoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatGPTUrl = null,
  }) {
    return _then(_value.copyWith(
      chatGPTUrl: null == chatGPTUrl
          ? _value.chatGPTUrl
          : chatGPTUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TranslateRepositoryStateImplCopyWith<$Res>
    implements $TranslateRepositoryStateCopyWith<$Res> {
  factory _$$TranslateRepositoryStateImplCopyWith(
          _$TranslateRepositoryStateImpl value,
          $Res Function(_$TranslateRepositoryStateImpl) then) =
      __$$TranslateRepositoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String chatGPTUrl});
}

/// @nodoc
class __$$TranslateRepositoryStateImplCopyWithImpl<$Res>
    extends _$TranslateRepositoryStateCopyWithImpl<$Res,
        _$TranslateRepositoryStateImpl>
    implements _$$TranslateRepositoryStateImplCopyWith<$Res> {
  __$$TranslateRepositoryStateImplCopyWithImpl(
      _$TranslateRepositoryStateImpl _value,
      $Res Function(_$TranslateRepositoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatGPTUrl = null,
  }) {
    return _then(_$TranslateRepositoryStateImpl(
      chatGPTUrl: null == chatGPTUrl
          ? _value.chatGPTUrl
          : chatGPTUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TranslateRepositoryStateImpl implements _TranslateRepositoryState {
  const _$TranslateRepositoryStateImpl(
      {this.chatGPTUrl = 'https://api.openai.com/v1/chat/completions'});

  @override
  @JsonKey()
  final String chatGPTUrl;

  @override
  String toString() {
    return 'TranslateRepositoryState(chatGPTUrl: $chatGPTUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslateRepositoryStateImpl &&
            (identical(other.chatGPTUrl, chatGPTUrl) ||
                other.chatGPTUrl == chatGPTUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatGPTUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslateRepositoryStateImplCopyWith<_$TranslateRepositoryStateImpl>
      get copyWith => __$$TranslateRepositoryStateImplCopyWithImpl<
          _$TranslateRepositoryStateImpl>(this, _$identity);
}

abstract class _TranslateRepositoryState implements TranslateRepositoryState {
  const factory _TranslateRepositoryState({final String chatGPTUrl}) =
      _$TranslateRepositoryStateImpl;

  @override
  String get chatGPTUrl;
  @override
  @JsonKey(ignore: true)
  _$$TranslateRepositoryStateImplCopyWith<_$TranslateRepositoryStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
