// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subtitle_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubtitleDto _$SubtitleDtoFromJson(Map<String, dynamic> json) {
  return _SubtitleDto.fromJson(json);
}

/// @nodoc
mixin _$SubtitleDto {
  String get pk => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  String get period => throw _privateConstructorUsedError;
  SubtitleOneType get subtitleOneType => throw _privateConstructorUsedError;
  String get subtitlePk => throw _privateConstructorUsedError;
  Map<String, String> get translations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubtitleDtoCopyWith<SubtitleDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubtitleDtoCopyWith<$Res> {
  factory $SubtitleDtoCopyWith(
          SubtitleDto value, $Res Function(SubtitleDto) then) =
      _$SubtitleDtoCopyWithImpl<$Res, SubtitleDto>;
  @useResult
  $Res call(
      {String pk,
      int order,
      String period,
      SubtitleOneType subtitleOneType,
      String subtitlePk,
      Map<String, String> translations});
}

/// @nodoc
class _$SubtitleDtoCopyWithImpl<$Res, $Val extends SubtitleDto>
    implements $SubtitleDtoCopyWith<$Res> {
  _$SubtitleDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pk = null,
    Object? order = null,
    Object? period = null,
    Object? subtitleOneType = null,
    Object? subtitlePk = null,
    Object? translations = null,
  }) {
    return _then(_value.copyWith(
      pk: null == pk
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as String,
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
      subtitlePk: null == subtitlePk
          ? _value.subtitlePk
          : subtitlePk // ignore: cast_nullable_to_non_nullable
              as String,
      translations: null == translations
          ? _value.translations
          : translations // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubtitleDtoImplCopyWith<$Res>
    implements $SubtitleDtoCopyWith<$Res> {
  factory _$$SubtitleDtoImplCopyWith(
          _$SubtitleDtoImpl value, $Res Function(_$SubtitleDtoImpl) then) =
      __$$SubtitleDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String pk,
      int order,
      String period,
      SubtitleOneType subtitleOneType,
      String subtitlePk,
      Map<String, String> translations});
}

/// @nodoc
class __$$SubtitleDtoImplCopyWithImpl<$Res>
    extends _$SubtitleDtoCopyWithImpl<$Res, _$SubtitleDtoImpl>
    implements _$$SubtitleDtoImplCopyWith<$Res> {
  __$$SubtitleDtoImplCopyWithImpl(
      _$SubtitleDtoImpl _value, $Res Function(_$SubtitleDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pk = null,
    Object? order = null,
    Object? period = null,
    Object? subtitleOneType = null,
    Object? subtitlePk = null,
    Object? translations = null,
  }) {
    return _then(_$SubtitleDtoImpl(
      pk: null == pk
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as String,
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
      subtitlePk: null == subtitlePk
          ? _value.subtitlePk
          : subtitlePk // ignore: cast_nullable_to_non_nullable
              as String,
      translations: null == translations
          ? _value._translations
          : translations // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubtitleDtoImpl extends _SubtitleDto {
  const _$SubtitleDtoImpl(
      {required this.pk,
      required this.order,
      required this.period,
      required this.subtitleOneType,
      required this.subtitlePk,
      required final Map<String, String> translations})
      : _translations = translations,
        super._();

  factory _$SubtitleDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubtitleDtoImplFromJson(json);

  @override
  final String pk;
  @override
  final int order;
  @override
  final String period;
  @override
  final SubtitleOneType subtitleOneType;
  @override
  final String subtitlePk;
  final Map<String, String> _translations;
  @override
  Map<String, String> get translations {
    if (_translations is EqualUnmodifiableMapView) return _translations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_translations);
  }

  @override
  String toString() {
    return 'SubtitleDto(pk: $pk, order: $order, period: $period, subtitleOneType: $subtitleOneType, subtitlePk: $subtitlePk, translations: $translations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubtitleDtoImpl &&
            (identical(other.pk, pk) || other.pk == pk) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.subtitleOneType, subtitleOneType) ||
                other.subtitleOneType == subtitleOneType) &&
            (identical(other.subtitlePk, subtitlePk) ||
                other.subtitlePk == subtitlePk) &&
            const DeepCollectionEquality()
                .equals(other._translations, _translations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      pk,
      order,
      period,
      subtitleOneType,
      subtitlePk,
      const DeepCollectionEquality().hash(_translations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubtitleDtoImplCopyWith<_$SubtitleDtoImpl> get copyWith =>
      __$$SubtitleDtoImplCopyWithImpl<_$SubtitleDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubtitleDtoImplToJson(
      this,
    );
  }
}

abstract class _SubtitleDto extends SubtitleDto {
  const factory _SubtitleDto(
      {required final String pk,
      required final int order,
      required final String period,
      required final SubtitleOneType subtitleOneType,
      required final String subtitlePk,
      required final Map<String, String> translations}) = _$SubtitleDtoImpl;
  const _SubtitleDto._() : super._();

  factory _SubtitleDto.fromJson(Map<String, dynamic> json) =
      _$SubtitleDtoImpl.fromJson;

  @override
  String get pk;
  @override
  int get order;
  @override
  String get period;
  @override
  SubtitleOneType get subtitleOneType;
  @override
  String get subtitlePk;
  @override
  Map<String, String> get translations;
  @override
  @JsonKey(ignore: true)
  _$$SubtitleDtoImplCopyWith<_$SubtitleDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
