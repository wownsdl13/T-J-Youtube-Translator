// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subtitle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Subtitle {
  String get title => throw _privateConstructorUsedError;
  List<OneSrt> get srtList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubtitleCopyWith<Subtitle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubtitleCopyWith<$Res> {
  factory $SubtitleCopyWith(Subtitle value, $Res Function(Subtitle) then) =
      _$SubtitleCopyWithImpl<$Res, Subtitle>;
  @useResult
  $Res call({String title, List<OneSrt> srtList});
}

/// @nodoc
class _$SubtitleCopyWithImpl<$Res, $Val extends Subtitle>
    implements $SubtitleCopyWith<$Res> {
  _$SubtitleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? srtList = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      srtList: null == srtList
          ? _value.srtList
          : srtList // ignore: cast_nullable_to_non_nullable
              as List<OneSrt>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubtitleImplCopyWith<$Res>
    implements $SubtitleCopyWith<$Res> {
  factory _$$SubtitleImplCopyWith(
          _$SubtitleImpl value, $Res Function(_$SubtitleImpl) then) =
      __$$SubtitleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, List<OneSrt> srtList});
}

/// @nodoc
class __$$SubtitleImplCopyWithImpl<$Res>
    extends _$SubtitleCopyWithImpl<$Res, _$SubtitleImpl>
    implements _$$SubtitleImplCopyWith<$Res> {
  __$$SubtitleImplCopyWithImpl(
      _$SubtitleImpl _value, $Res Function(_$SubtitleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? srtList = null,
  }) {
    return _then(_$SubtitleImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      srtList: null == srtList
          ? _value._srtList
          : srtList // ignore: cast_nullable_to_non_nullable
              as List<OneSrt>,
    ));
  }
}

/// @nodoc

class _$SubtitleImpl implements _Subtitle {
  const _$SubtitleImpl(
      {required this.title, required final List<OneSrt> srtList})
      : _srtList = srtList;

  @override
  final String title;
  final List<OneSrt> _srtList;
  @override
  List<OneSrt> get srtList {
    if (_srtList is EqualUnmodifiableListView) return _srtList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_srtList);
  }

  @override
  String toString() {
    return 'Subtitle(title: $title, srtList: $srtList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubtitleImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._srtList, _srtList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_srtList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubtitleImplCopyWith<_$SubtitleImpl> get copyWith =>
      __$$SubtitleImplCopyWithImpl<_$SubtitleImpl>(this, _$identity);
}

abstract class _Subtitle implements Subtitle {
  const factory _Subtitle(
      {required final String title,
      required final List<OneSrt> srtList}) = _$SubtitleImpl;

  @override
  String get title;
  @override
  List<OneSrt> get srtList;
  @override
  @JsonKey(ignore: true)
  _$$SubtitleImplCopyWith<_$SubtitleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
