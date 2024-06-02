// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translator_loading_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TranslatorLoadingState {
  bool get translatingTitle => throw _privateConstructorUsedError;
  bool get translatingDescription => throw _privateConstructorUsedError;
  bool get readingSrt => throw _privateConstructorUsedError;
  bool get gettingAudio => throw _privateConstructorUsedError;
  int? get loadingPercentage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TranslatorLoadingStateCopyWith<TranslatorLoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslatorLoadingStateCopyWith<$Res> {
  factory $TranslatorLoadingStateCopyWith(TranslatorLoadingState value,
          $Res Function(TranslatorLoadingState) then) =
      _$TranslatorLoadingStateCopyWithImpl<$Res, TranslatorLoadingState>;
  @useResult
  $Res call(
      {bool translatingTitle,
      bool translatingDescription,
      bool readingSrt,
      bool gettingAudio,
      int? loadingPercentage});
}

/// @nodoc
class _$TranslatorLoadingStateCopyWithImpl<$Res,
        $Val extends TranslatorLoadingState>
    implements $TranslatorLoadingStateCopyWith<$Res> {
  _$TranslatorLoadingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translatingTitle = null,
    Object? translatingDescription = null,
    Object? readingSrt = null,
    Object? gettingAudio = null,
    Object? loadingPercentage = freezed,
  }) {
    return _then(_value.copyWith(
      translatingTitle: null == translatingTitle
          ? _value.translatingTitle
          : translatingTitle // ignore: cast_nullable_to_non_nullable
              as bool,
      translatingDescription: null == translatingDescription
          ? _value.translatingDescription
          : translatingDescription // ignore: cast_nullable_to_non_nullable
              as bool,
      readingSrt: null == readingSrt
          ? _value.readingSrt
          : readingSrt // ignore: cast_nullable_to_non_nullable
              as bool,
      gettingAudio: null == gettingAudio
          ? _value.gettingAudio
          : gettingAudio // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingPercentage: freezed == loadingPercentage
          ? _value.loadingPercentage
          : loadingPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TranslatorLoadingStateImplCopyWith<$Res>
    implements $TranslatorLoadingStateCopyWith<$Res> {
  factory _$$TranslatorLoadingStateImplCopyWith(
          _$TranslatorLoadingStateImpl value,
          $Res Function(_$TranslatorLoadingStateImpl) then) =
      __$$TranslatorLoadingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool translatingTitle,
      bool translatingDescription,
      bool readingSrt,
      bool gettingAudio,
      int? loadingPercentage});
}

/// @nodoc
class __$$TranslatorLoadingStateImplCopyWithImpl<$Res>
    extends _$TranslatorLoadingStateCopyWithImpl<$Res,
        _$TranslatorLoadingStateImpl>
    implements _$$TranslatorLoadingStateImplCopyWith<$Res> {
  __$$TranslatorLoadingStateImplCopyWithImpl(
      _$TranslatorLoadingStateImpl _value,
      $Res Function(_$TranslatorLoadingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translatingTitle = null,
    Object? translatingDescription = null,
    Object? readingSrt = null,
    Object? gettingAudio = null,
    Object? loadingPercentage = freezed,
  }) {
    return _then(_$TranslatorLoadingStateImpl(
      translatingTitle: null == translatingTitle
          ? _value.translatingTitle
          : translatingTitle // ignore: cast_nullable_to_non_nullable
              as bool,
      translatingDescription: null == translatingDescription
          ? _value.translatingDescription
          : translatingDescription // ignore: cast_nullable_to_non_nullable
              as bool,
      readingSrt: null == readingSrt
          ? _value.readingSrt
          : readingSrt // ignore: cast_nullable_to_non_nullable
              as bool,
      gettingAudio: null == gettingAudio
          ? _value.gettingAudio
          : gettingAudio // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingPercentage: freezed == loadingPercentage
          ? _value.loadingPercentage
          : loadingPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$TranslatorLoadingStateImpl implements _TranslatorLoadingState {
  const _$TranslatorLoadingStateImpl(
      {this.translatingTitle = false,
      this.translatingDescription = false,
      this.readingSrt = false,
      this.gettingAudio = false,
      this.loadingPercentage});

  @override
  @JsonKey()
  final bool translatingTitle;
  @override
  @JsonKey()
  final bool translatingDescription;
  @override
  @JsonKey()
  final bool readingSrt;
  @override
  @JsonKey()
  final bool gettingAudio;
  @override
  final int? loadingPercentage;

  @override
  String toString() {
    return 'TranslatorLoadingState(translatingTitle: $translatingTitle, translatingDescription: $translatingDescription, readingSrt: $readingSrt, gettingAudio: $gettingAudio, loadingPercentage: $loadingPercentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslatorLoadingStateImpl &&
            (identical(other.translatingTitle, translatingTitle) ||
                other.translatingTitle == translatingTitle) &&
            (identical(other.translatingDescription, translatingDescription) ||
                other.translatingDescription == translatingDescription) &&
            (identical(other.readingSrt, readingSrt) ||
                other.readingSrt == readingSrt) &&
            (identical(other.gettingAudio, gettingAudio) ||
                other.gettingAudio == gettingAudio) &&
            (identical(other.loadingPercentage, loadingPercentage) ||
                other.loadingPercentage == loadingPercentage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, translatingTitle,
      translatingDescription, readingSrt, gettingAudio, loadingPercentage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslatorLoadingStateImplCopyWith<_$TranslatorLoadingStateImpl>
      get copyWith => __$$TranslatorLoadingStateImplCopyWithImpl<
          _$TranslatorLoadingStateImpl>(this, _$identity);
}

abstract class _TranslatorLoadingState implements TranslatorLoadingState {
  const factory _TranslatorLoadingState(
      {final bool translatingTitle,
      final bool translatingDescription,
      final bool readingSrt,
      final bool gettingAudio,
      final int? loadingPercentage}) = _$TranslatorLoadingStateImpl;

  @override
  bool get translatingTitle;
  @override
  bool get translatingDescription;
  @override
  bool get readingSrt;
  @override
  bool get gettingAudio;
  @override
  int? get loadingPercentage;
  @override
  @JsonKey(ignore: true)
  _$$TranslatorLoadingStateImplCopyWith<_$TranslatorLoadingStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
