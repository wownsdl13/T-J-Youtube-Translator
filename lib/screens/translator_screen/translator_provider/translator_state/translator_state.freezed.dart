// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translator_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TranslatorState {
  VideoInputType get videoInputType => throw _privateConstructorUsedError;
  UploadPercentage? get uploadPercentage => throw _privateConstructorUsedError;
  VideoUpload? get videoUpload => throw _privateConstructorUsedError;
  bool get addOriginal => throw _privateConstructorUsedError;
  TranslatorDataState get translatorDataState =>
      throw _privateConstructorUsedError;
  TranslatorLoadingState get translatorLoadingState =>
      throw _privateConstructorUsedError; //repositories
  @protected
  YoutubeRepositoryState get youtubeRepositoryState =>
      throw _privateConstructorUsedError;
  @protected
  UserRepositoryState get userRepositoryState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TranslatorStateCopyWith<TranslatorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslatorStateCopyWith<$Res> {
  factory $TranslatorStateCopyWith(
          TranslatorState value, $Res Function(TranslatorState) then) =
      _$TranslatorStateCopyWithImpl<$Res, TranslatorState>;
  @useResult
  $Res call(
      {VideoInputType videoInputType,
      UploadPercentage? uploadPercentage,
      VideoUpload? videoUpload,
      bool addOriginal,
      TranslatorDataState translatorDataState,
      TranslatorLoadingState translatorLoadingState,
      @protected YoutubeRepositoryState youtubeRepositoryState,
      @protected UserRepositoryState userRepositoryState});

  $UploadPercentageCopyWith<$Res>? get uploadPercentage;
  $VideoUploadCopyWith<$Res>? get videoUpload;
  $TranslatorDataStateCopyWith<$Res> get translatorDataState;
  $TranslatorLoadingStateCopyWith<$Res> get translatorLoadingState;
  $YoutubeRepositoryStateCopyWith<$Res> get youtubeRepositoryState;
  $UserRepositoryStateCopyWith<$Res> get userRepositoryState;
}

/// @nodoc
class _$TranslatorStateCopyWithImpl<$Res, $Val extends TranslatorState>
    implements $TranslatorStateCopyWith<$Res> {
  _$TranslatorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoInputType = null,
    Object? uploadPercentage = freezed,
    Object? videoUpload = freezed,
    Object? addOriginal = null,
    Object? translatorDataState = null,
    Object? translatorLoadingState = null,
    Object? youtubeRepositoryState = null,
    Object? userRepositoryState = null,
  }) {
    return _then(_value.copyWith(
      videoInputType: null == videoInputType
          ? _value.videoInputType
          : videoInputType // ignore: cast_nullable_to_non_nullable
              as VideoInputType,
      uploadPercentage: freezed == uploadPercentage
          ? _value.uploadPercentage
          : uploadPercentage // ignore: cast_nullable_to_non_nullable
              as UploadPercentage?,
      videoUpload: freezed == videoUpload
          ? _value.videoUpload
          : videoUpload // ignore: cast_nullable_to_non_nullable
              as VideoUpload?,
      addOriginal: null == addOriginal
          ? _value.addOriginal
          : addOriginal // ignore: cast_nullable_to_non_nullable
              as bool,
      translatorDataState: null == translatorDataState
          ? _value.translatorDataState
          : translatorDataState // ignore: cast_nullable_to_non_nullable
              as TranslatorDataState,
      translatorLoadingState: null == translatorLoadingState
          ? _value.translatorLoadingState
          : translatorLoadingState // ignore: cast_nullable_to_non_nullable
              as TranslatorLoadingState,
      youtubeRepositoryState: null == youtubeRepositoryState
          ? _value.youtubeRepositoryState
          : youtubeRepositoryState // ignore: cast_nullable_to_non_nullable
              as YoutubeRepositoryState,
      userRepositoryState: null == userRepositoryState
          ? _value.userRepositoryState
          : userRepositoryState // ignore: cast_nullable_to_non_nullable
              as UserRepositoryState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UploadPercentageCopyWith<$Res>? get uploadPercentage {
    if (_value.uploadPercentage == null) {
      return null;
    }

    return $UploadPercentageCopyWith<$Res>(_value.uploadPercentage!, (value) {
      return _then(_value.copyWith(uploadPercentage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VideoUploadCopyWith<$Res>? get videoUpload {
    if (_value.videoUpload == null) {
      return null;
    }

    return $VideoUploadCopyWith<$Res>(_value.videoUpload!, (value) {
      return _then(_value.copyWith(videoUpload: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TranslatorDataStateCopyWith<$Res> get translatorDataState {
    return $TranslatorDataStateCopyWith<$Res>(_value.translatorDataState,
        (value) {
      return _then(_value.copyWith(translatorDataState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TranslatorLoadingStateCopyWith<$Res> get translatorLoadingState {
    return $TranslatorLoadingStateCopyWith<$Res>(_value.translatorLoadingState,
        (value) {
      return _then(_value.copyWith(translatorLoadingState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $YoutubeRepositoryStateCopyWith<$Res> get youtubeRepositoryState {
    return $YoutubeRepositoryStateCopyWith<$Res>(_value.youtubeRepositoryState,
        (value) {
      return _then(_value.copyWith(youtubeRepositoryState: value) as $Val);
    });
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
abstract class _$$TranslatorStateImplCopyWith<$Res>
    implements $TranslatorStateCopyWith<$Res> {
  factory _$$TranslatorStateImplCopyWith(_$TranslatorStateImpl value,
          $Res Function(_$TranslatorStateImpl) then) =
      __$$TranslatorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VideoInputType videoInputType,
      UploadPercentage? uploadPercentage,
      VideoUpload? videoUpload,
      bool addOriginal,
      TranslatorDataState translatorDataState,
      TranslatorLoadingState translatorLoadingState,
      @protected YoutubeRepositoryState youtubeRepositoryState,
      @protected UserRepositoryState userRepositoryState});

  @override
  $UploadPercentageCopyWith<$Res>? get uploadPercentage;
  @override
  $VideoUploadCopyWith<$Res>? get videoUpload;
  @override
  $TranslatorDataStateCopyWith<$Res> get translatorDataState;
  @override
  $TranslatorLoadingStateCopyWith<$Res> get translatorLoadingState;
  @override
  $YoutubeRepositoryStateCopyWith<$Res> get youtubeRepositoryState;
  @override
  $UserRepositoryStateCopyWith<$Res> get userRepositoryState;
}

/// @nodoc
class __$$TranslatorStateImplCopyWithImpl<$Res>
    extends _$TranslatorStateCopyWithImpl<$Res, _$TranslatorStateImpl>
    implements _$$TranslatorStateImplCopyWith<$Res> {
  __$$TranslatorStateImplCopyWithImpl(
      _$TranslatorStateImpl _value, $Res Function(_$TranslatorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoInputType = null,
    Object? uploadPercentage = freezed,
    Object? videoUpload = freezed,
    Object? addOriginal = null,
    Object? translatorDataState = null,
    Object? translatorLoadingState = null,
    Object? youtubeRepositoryState = null,
    Object? userRepositoryState = null,
  }) {
    return _then(_$TranslatorStateImpl(
      videoInputType: null == videoInputType
          ? _value.videoInputType
          : videoInputType // ignore: cast_nullable_to_non_nullable
              as VideoInputType,
      uploadPercentage: freezed == uploadPercentage
          ? _value.uploadPercentage
          : uploadPercentage // ignore: cast_nullable_to_non_nullable
              as UploadPercentage?,
      videoUpload: freezed == videoUpload
          ? _value.videoUpload
          : videoUpload // ignore: cast_nullable_to_non_nullable
              as VideoUpload?,
      addOriginal: null == addOriginal
          ? _value.addOriginal
          : addOriginal // ignore: cast_nullable_to_non_nullable
              as bool,
      translatorDataState: null == translatorDataState
          ? _value.translatorDataState
          : translatorDataState // ignore: cast_nullable_to_non_nullable
              as TranslatorDataState,
      translatorLoadingState: null == translatorLoadingState
          ? _value.translatorLoadingState
          : translatorLoadingState // ignore: cast_nullable_to_non_nullable
              as TranslatorLoadingState,
      youtubeRepositoryState: null == youtubeRepositoryState
          ? _value.youtubeRepositoryState
          : youtubeRepositoryState // ignore: cast_nullable_to_non_nullable
              as YoutubeRepositoryState,
      userRepositoryState: null == userRepositoryState
          ? _value.userRepositoryState
          : userRepositoryState // ignore: cast_nullable_to_non_nullable
              as UserRepositoryState,
    ));
  }
}

/// @nodoc

class _$TranslatorStateImpl extends _TranslatorState {
  const _$TranslatorStateImpl(
      {this.videoInputType = VideoInputType.file,
      this.uploadPercentage,
      this.videoUpload,
      this.addOriginal = false,
      required this.translatorDataState,
      this.translatorLoadingState = const TranslatorLoadingState(),
      @protected required this.youtubeRepositoryState,
      @protected required this.userRepositoryState})
      : super._();

  @override
  @JsonKey()
  final VideoInputType videoInputType;
  @override
  final UploadPercentage? uploadPercentage;
  @override
  final VideoUpload? videoUpload;
  @override
  @JsonKey()
  final bool addOriginal;
  @override
  final TranslatorDataState translatorDataState;
  @override
  @JsonKey()
  final TranslatorLoadingState translatorLoadingState;
//repositories
  @override
  @protected
  final YoutubeRepositoryState youtubeRepositoryState;
  @override
  @protected
  final UserRepositoryState userRepositoryState;

  @override
  String toString() {
    return 'TranslatorState(videoInputType: $videoInputType, uploadPercentage: $uploadPercentage, videoUpload: $videoUpload, addOriginal: $addOriginal, translatorDataState: $translatorDataState, translatorLoadingState: $translatorLoadingState, youtubeRepositoryState: $youtubeRepositoryState, userRepositoryState: $userRepositoryState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslatorStateImpl &&
            (identical(other.videoInputType, videoInputType) ||
                other.videoInputType == videoInputType) &&
            (identical(other.uploadPercentage, uploadPercentage) ||
                other.uploadPercentage == uploadPercentage) &&
            (identical(other.videoUpload, videoUpload) ||
                other.videoUpload == videoUpload) &&
            (identical(other.addOriginal, addOriginal) ||
                other.addOriginal == addOriginal) &&
            (identical(other.translatorDataState, translatorDataState) ||
                other.translatorDataState == translatorDataState) &&
            (identical(other.translatorLoadingState, translatorLoadingState) ||
                other.translatorLoadingState == translatorLoadingState) &&
            (identical(other.youtubeRepositoryState, youtubeRepositoryState) ||
                other.youtubeRepositoryState == youtubeRepositoryState) &&
            (identical(other.userRepositoryState, userRepositoryState) ||
                other.userRepositoryState == userRepositoryState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      videoInputType,
      uploadPercentage,
      videoUpload,
      addOriginal,
      translatorDataState,
      translatorLoadingState,
      youtubeRepositoryState,
      userRepositoryState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslatorStateImplCopyWith<_$TranslatorStateImpl> get copyWith =>
      __$$TranslatorStateImplCopyWithImpl<_$TranslatorStateImpl>(
          this, _$identity);
}

abstract class _TranslatorState extends TranslatorState {
  const factory _TranslatorState(
      {final VideoInputType videoInputType,
      final UploadPercentage? uploadPercentage,
      final VideoUpload? videoUpload,
      final bool addOriginal,
      required final TranslatorDataState translatorDataState,
      final TranslatorLoadingState translatorLoadingState,
      @protected required final YoutubeRepositoryState youtubeRepositoryState,
      @protected
      required final UserRepositoryState
          userRepositoryState}) = _$TranslatorStateImpl;
  const _TranslatorState._() : super._();

  @override
  VideoInputType get videoInputType;
  @override
  UploadPercentage? get uploadPercentage;
  @override
  VideoUpload? get videoUpload;
  @override
  bool get addOriginal;
  @override
  TranslatorDataState get translatorDataState;
  @override
  TranslatorLoadingState get translatorLoadingState;
  @override //repositories
  @protected
  YoutubeRepositoryState get youtubeRepositoryState;
  @override
  @protected
  UserRepositoryState get userRepositoryState;
  @override
  @JsonKey(ignore: true)
  _$$TranslatorStateImplCopyWith<_$TranslatorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
