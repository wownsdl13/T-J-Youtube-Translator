// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subtitle_one_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubtitleOneDto _$SubtitleOneDtoFromJson(Map<String, dynamic> json) {
  return _SubtitleOneDto.fromJson(json);
}

/// @nodoc
mixin _$SubtitleOneDto {
  int get order => throw _privateConstructorUsedError;
  String get period => throw _privateConstructorUsedError;
  SubtitleOneType get subtitleOneType => throw _privateConstructorUsedError;
  Map<String, String> get translations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubtitleOneDtoCopyWith<SubtitleOneDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubtitleOneDtoCopyWith<$Res> {
  factory $SubtitleOneDtoCopyWith(
          SubtitleOneDto value, $Res Function(SubtitleOneDto) then) =
      _$SubtitleOneDtoCopyWithImpl<$Res, SubtitleOneDto>;
  @useResult
  $Res call(
      {int order,
      String period,
      SubtitleOneType subtitleOneType,
      Map<String, String> translations});
}

/// @nodoc
class _$SubtitleOneDtoCopyWithImpl<$Res, $Val extends SubtitleOneDto>
    implements $SubtitleOneDtoCopyWith<$Res> {
  _$SubtitleOneDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$SubtitleOneDtoImplCopyWith<$Res>
    implements $SubtitleOneDtoCopyWith<$Res> {
  factory _$$SubtitleOneDtoImplCopyWith(_$SubtitleOneDtoImpl value,
          $Res Function(_$SubtitleOneDtoImpl) then) =
      __$$SubtitleOneDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int order,
      String period,
      SubtitleOneType subtitleOneType,
      Map<String, String> translations});
}

/// @nodoc
class __$$SubtitleOneDtoImplCopyWithImpl<$Res>
    extends _$SubtitleOneDtoCopyWithImpl<$Res, _$SubtitleOneDtoImpl>
    implements _$$SubtitleOneDtoImplCopyWith<$Res> {
  __$$SubtitleOneDtoImplCopyWithImpl(
      _$SubtitleOneDtoImpl _value, $Res Function(_$SubtitleOneDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? period = null,
    Object? subtitleOneType = null,
    Object? translations = null,
  }) {
    return _then(_$SubtitleOneDtoImpl(
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
@JsonSerializable()
class _$SubtitleOneDtoImpl implements _SubtitleOneDto {
  const _$SubtitleOneDtoImpl(
      {required this.order,
      required this.period,
      required this.subtitleOneType,
      required final Map<String, String> translations})
      : _translations = translations;

  factory _$SubtitleOneDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubtitleOneDtoImplFromJson(json);

  @override
  final int order;
  @override
  final String period;
  @override
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
    return 'SubtitleOneDto(order: $order, period: $period, subtitleOneType: $subtitleOneType, translations: $translations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubtitleOneDtoImpl &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.subtitleOneType, subtitleOneType) ||
                other.subtitleOneType == subtitleOneType) &&
            const DeepCollectionEquality()
                .equals(other._translations, _translations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, order, period, subtitleOneType,
      const DeepCollectionEquality().hash(_translations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubtitleOneDtoImplCopyWith<_$SubtitleOneDtoImpl> get copyWith =>
      __$$SubtitleOneDtoImplCopyWithImpl<_$SubtitleOneDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubtitleOneDtoImplToJson(
      this,
    );
  }
}

abstract class _SubtitleOneDto implements SubtitleOneDto {
  const factory _SubtitleOneDto(
      {required final int order,
      required final String period,
      required final SubtitleOneType subtitleOneType,
      required final Map<String, String> translations}) = _$SubtitleOneDtoImpl;

  factory _SubtitleOneDto.fromJson(Map<String, dynamic> json) =
      _$SubtitleOneDtoImpl.fromJson;

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
  _$$SubtitleOneDtoImplCopyWith<_$SubtitleOneDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
