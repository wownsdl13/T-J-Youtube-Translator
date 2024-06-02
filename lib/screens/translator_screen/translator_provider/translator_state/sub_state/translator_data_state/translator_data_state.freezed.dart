// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translator_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TranslatorDataState {
  @protected
  NotifierProviderRef<TranslatorState> get ref =>
      throw _privateConstructorUsedError;
  Translate get translate => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  String get videoId => throw _privateConstructorUsedError;
  String get blogPostLink => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Map<String, String>? get translatedTitle =>
      throw _privateConstructorUsedError;
  Map<String, String>? get translatedDescription =>
      throw _privateConstructorUsedError;
  Uint8List? get thumbnail => throw _privateConstructorUsedError; //repositories
  @protected
  YoutubeRepositoryState get youtubeRepositoryState =>
      throw _privateConstructorUsedError;
  @protected
  UserRepositoryState get userRepositoryState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TranslatorDataStateCopyWith<TranslatorDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslatorDataStateCopyWith<$Res> {
  factory $TranslatorDataStateCopyWith(
          TranslatorDataState value, $Res Function(TranslatorDataState) then) =
      _$TranslatorDataStateCopyWithImpl<$Res, TranslatorDataState>;
  @useResult
  $Res call(
      {@protected NotifierProviderRef<TranslatorState> ref,
      Translate translate,
      List<String> tags,
      String comment,
      String videoId,
      String blogPostLink,
      String title,
      String description,
      Map<String, String>? translatedTitle,
      Map<String, String>? translatedDescription,
      Uint8List? thumbnail,
      @protected YoutubeRepositoryState youtubeRepositoryState,
      @protected UserRepositoryState userRepositoryState});

  $TranslateCopyWith<$Res> get translate;
  $YoutubeRepositoryStateCopyWith<$Res> get youtubeRepositoryState;
  $UserRepositoryStateCopyWith<$Res> get userRepositoryState;
}

/// @nodoc
class _$TranslatorDataStateCopyWithImpl<$Res, $Val extends TranslatorDataState>
    implements $TranslatorDataStateCopyWith<$Res> {
  _$TranslatorDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ref = null,
    Object? translate = null,
    Object? tags = null,
    Object? comment = null,
    Object? videoId = null,
    Object? blogPostLink = null,
    Object? title = null,
    Object? description = null,
    Object? translatedTitle = freezed,
    Object? translatedDescription = freezed,
    Object? thumbnail = freezed,
    Object? youtubeRepositoryState = null,
    Object? userRepositoryState = null,
  }) {
    return _then(_value.copyWith(
      ref: null == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as NotifierProviderRef<TranslatorState>,
      translate: null == translate
          ? _value.translate
          : translate // ignore: cast_nullable_to_non_nullable
              as Translate,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      blogPostLink: null == blogPostLink
          ? _value.blogPostLink
          : blogPostLink // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      translatedTitle: freezed == translatedTitle
          ? _value.translatedTitle
          : translatedTitle // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      translatedDescription: freezed == translatedDescription
          ? _value.translatedDescription
          : translatedDescription // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
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
  $TranslateCopyWith<$Res> get translate {
    return $TranslateCopyWith<$Res>(_value.translate, (value) {
      return _then(_value.copyWith(translate: value) as $Val);
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
abstract class _$$TranslatorDataStateImplCopyWith<$Res>
    implements $TranslatorDataStateCopyWith<$Res> {
  factory _$$TranslatorDataStateImplCopyWith(_$TranslatorDataStateImpl value,
          $Res Function(_$TranslatorDataStateImpl) then) =
      __$$TranslatorDataStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@protected NotifierProviderRef<TranslatorState> ref,
      Translate translate,
      List<String> tags,
      String comment,
      String videoId,
      String blogPostLink,
      String title,
      String description,
      Map<String, String>? translatedTitle,
      Map<String, String>? translatedDescription,
      Uint8List? thumbnail,
      @protected YoutubeRepositoryState youtubeRepositoryState,
      @protected UserRepositoryState userRepositoryState});

  @override
  $TranslateCopyWith<$Res> get translate;
  @override
  $YoutubeRepositoryStateCopyWith<$Res> get youtubeRepositoryState;
  @override
  $UserRepositoryStateCopyWith<$Res> get userRepositoryState;
}

/// @nodoc
class __$$TranslatorDataStateImplCopyWithImpl<$Res>
    extends _$TranslatorDataStateCopyWithImpl<$Res, _$TranslatorDataStateImpl>
    implements _$$TranslatorDataStateImplCopyWith<$Res> {
  __$$TranslatorDataStateImplCopyWithImpl(_$TranslatorDataStateImpl _value,
      $Res Function(_$TranslatorDataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ref = null,
    Object? translate = null,
    Object? tags = null,
    Object? comment = null,
    Object? videoId = null,
    Object? blogPostLink = null,
    Object? title = null,
    Object? description = null,
    Object? translatedTitle = freezed,
    Object? translatedDescription = freezed,
    Object? thumbnail = freezed,
    Object? youtubeRepositoryState = null,
    Object? userRepositoryState = null,
  }) {
    return _then(_$TranslatorDataStateImpl(
      ref: null == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as NotifierProviderRef<TranslatorState>,
      translate: null == translate
          ? _value.translate
          : translate // ignore: cast_nullable_to_non_nullable
              as Translate,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      blogPostLink: null == blogPostLink
          ? _value.blogPostLink
          : blogPostLink // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      translatedTitle: freezed == translatedTitle
          ? _value._translatedTitle
          : translatedTitle // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      translatedDescription: freezed == translatedDescription
          ? _value._translatedDescription
          : translatedDescription // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
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

class _$TranslatorDataStateImpl extends _TranslatorDataState {
  const _$TranslatorDataStateImpl(
      {@protected required this.ref,
      required this.translate,
      final List<String> tags = const [],
      this.comment = '',
      this.videoId = '',
      this.blogPostLink = '',
      this.title = '',
      this.description = '',
      final Map<String, String>? translatedTitle,
      final Map<String, String>? translatedDescription,
      this.thumbnail,
      @protected required this.youtubeRepositoryState,
      @protected required this.userRepositoryState})
      : _tags = tags,
        _translatedTitle = translatedTitle,
        _translatedDescription = translatedDescription,
        super._();

  @override
  @protected
  final NotifierProviderRef<TranslatorState> ref;
  @override
  final Translate translate;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @JsonKey()
  final String comment;
  @override
  @JsonKey()
  final String videoId;
  @override
  @JsonKey()
  final String blogPostLink;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  final Map<String, String>? _translatedTitle;
  @override
  Map<String, String>? get translatedTitle {
    final value = _translatedTitle;
    if (value == null) return null;
    if (_translatedTitle is EqualUnmodifiableMapView) return _translatedTitle;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, String>? _translatedDescription;
  @override
  Map<String, String>? get translatedDescription {
    final value = _translatedDescription;
    if (value == null) return null;
    if (_translatedDescription is EqualUnmodifiableMapView)
      return _translatedDescription;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final Uint8List? thumbnail;
//repositories
  @override
  @protected
  final YoutubeRepositoryState youtubeRepositoryState;
  @override
  @protected
  final UserRepositoryState userRepositoryState;

  @override
  String toString() {
    return 'TranslatorDataState(ref: $ref, translate: $translate, tags: $tags, comment: $comment, videoId: $videoId, blogPostLink: $blogPostLink, title: $title, description: $description, translatedTitle: $translatedTitle, translatedDescription: $translatedDescription, thumbnail: $thumbnail, youtubeRepositoryState: $youtubeRepositoryState, userRepositoryState: $userRepositoryState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslatorDataStateImpl &&
            (identical(other.ref, ref) || other.ref == ref) &&
            (identical(other.translate, translate) ||
                other.translate == translate) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.blogPostLink, blogPostLink) ||
                other.blogPostLink == blogPostLink) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._translatedTitle, _translatedTitle) &&
            const DeepCollectionEquality()
                .equals(other._translatedDescription, _translatedDescription) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
            (identical(other.youtubeRepositoryState, youtubeRepositoryState) ||
                other.youtubeRepositoryState == youtubeRepositoryState) &&
            (identical(other.userRepositoryState, userRepositoryState) ||
                other.userRepositoryState == userRepositoryState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      ref,
      translate,
      const DeepCollectionEquality().hash(_tags),
      comment,
      videoId,
      blogPostLink,
      title,
      description,
      const DeepCollectionEquality().hash(_translatedTitle),
      const DeepCollectionEquality().hash(_translatedDescription),
      const DeepCollectionEquality().hash(thumbnail),
      youtubeRepositoryState,
      userRepositoryState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslatorDataStateImplCopyWith<_$TranslatorDataStateImpl> get copyWith =>
      __$$TranslatorDataStateImplCopyWithImpl<_$TranslatorDataStateImpl>(
          this, _$identity);
}

abstract class _TranslatorDataState extends TranslatorDataState {
  const factory _TranslatorDataState(
      {@protected required final NotifierProviderRef<TranslatorState> ref,
      required final Translate translate,
      final List<String> tags,
      final String comment,
      final String videoId,
      final String blogPostLink,
      final String title,
      final String description,
      final Map<String, String>? translatedTitle,
      final Map<String, String>? translatedDescription,
      final Uint8List? thumbnail,
      @protected required final YoutubeRepositoryState youtubeRepositoryState,
      @protected
      required final UserRepositoryState
          userRepositoryState}) = _$TranslatorDataStateImpl;
  const _TranslatorDataState._() : super._();

  @override
  @protected
  NotifierProviderRef<TranslatorState> get ref;
  @override
  Translate get translate;
  @override
  List<String> get tags;
  @override
  String get comment;
  @override
  String get videoId;
  @override
  String get blogPostLink;
  @override
  String get title;
  @override
  String get description;
  @override
  Map<String, String>? get translatedTitle;
  @override
  Map<String, String>? get translatedDescription;
  @override
  Uint8List? get thumbnail;
  @override //repositories
  @protected
  YoutubeRepositoryState get youtubeRepositoryState;
  @override
  @protected
  UserRepositoryState get userRepositoryState;
  @override
  @JsonKey(ignore: true)
  _$$TranslatorDataStateImplCopyWith<_$TranslatorDataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
