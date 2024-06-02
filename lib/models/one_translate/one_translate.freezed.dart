// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'one_translate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OneTranslate {
  int get order => throw _privateConstructorUsedError;
  String get period => throw _privateConstructorUsedError;
  SubtitleOneType get subtitleOneType => throw _privateConstructorUsedError;
  Map<String, String> get translations => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OneTranslateCopyWith<OneTranslate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneTranslateCopyWith<$Res> {
  factory $OneTranslateCopyWith(
          OneTranslate value, $Res Function(OneTranslate) then) =
      _$OneTranslateCopyWithImpl<$Res, OneTranslate>;
  @useResult
  $Res call(
      {int order,
      String period,
      SubtitleOneType subtitleOneType,
      Map<String, String> translations});
}

/// @nodoc
class _$OneTranslateCopyWithImpl<$Res, $Val extends OneTranslate>
    implements $OneTranslateCopyWith<$Res> {
  _$OneTranslateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? period = null,
    Object? subtitleOneType = null,
    Object? translations = null,
  }) {
    return _then(_value.copyWith(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
      subtitleOneType: null == subtitleOneType
          ? _value.subtitleOneType
          : subtitleOneType // ignore: cast_nullable_to_non_nullable
              as SubtitleOneType,
      translations: null == translations
          ? _value.translations
          : translations // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OneTranslateImplCopyWith<$Res>
    implements $OneTranslateCopyWith<$Res> {
  factory _$$OneTranslateImplCopyWith(
          _$OneTranslateImpl value, $Res Function(_$OneTranslateImpl) then) =
      __$$OneTranslateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int order,
      String period,
      SubtitleOneType subtitleOneType,
      Map<String, String> translations});
}

/// @nodoc
class __$$OneTranslateImplCopyWithImpl<$Res>
    extends _$OneTranslateCopyWithImpl<$Res, _$OneTranslateImpl>
    implements _$$OneTranslateImplCopyWith<$Res> {
  __$$OneTranslateImplCopyWithImpl(
      _$OneTranslateImpl _value, $Res Function(_$OneTranslateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? period = null,
    Object? subtitleOneType = null,
    Object? translations = null,
  }) {
    return _then(_$OneTranslateImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
      subtitleOneType: null == subtitleOneType
          ? _value.subtitleOneType
          : subtitleOneType // ignore: cast_nullable_to_non_nullable
              as SubtitleOneType,
      translations: null == translations
          ? _value._translations
          : translations // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class _$OneTranslateImpl extends _OneTranslate {
  const _$OneTranslateImpl(
      {required this.order,
      required this.period,
      this.subtitleOneType = SubtitleOneType.narration,
      required final Map<String, String> translations})
      : _translations = translations,
        super._();

  @override
  final int order;
  @override
  final String period;
  @override
  @JsonKey()
  final SubtitleOneType subtitleOneType;
  final Map<String, String> _translations;
  @override
  Map<String, String> get translations {
    if (_translations is EqualUnmodifiableMapView) return _translations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_translations);
  }

  @override
  String toString() {
    return 'OneTranslate(order: $order, period: $period, subtitleOneType: $subtitleOneType, translations: $translations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OneTranslateImpl &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.subtitleOneType, subtitleOneType) ||
                other.subtitleOneType == subtitleOneType) &&
            const DeepCollectionEquality()
                .equals(other._translations, _translations));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order, period, subtitleOneType,
      const DeepCollectionEquality().hash(_translations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OneTranslateImplCopyWith<_$OneTranslateImpl> get copyWith =>
      __$$OneTranslateImplCopyWithImpl<_$OneTranslateImpl>(this, _$identity);
}

abstract class _OneTranslate extends OneTranslate {
  const factory _OneTranslate(
      {required final int order,
      required final String period,
      final SubtitleOneType subtitleOneType,
      required final Map<String, String> translations}) = _$OneTranslateImpl;
  const _OneTranslate._() : super._();

  @override
  int get order;
  @override
  String get period;
  @override
  SubtitleOneType get subtitleOneType;
  @override
  Map<String, String> get translations;
  @override
  @JsonKey(ignore: true)
  _$$OneTranslateImplCopyWith<_$OneTranslateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
