// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subtitle_translate_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubtitleTranslateDto _$SubtitleTranslateDtoFromJson(Map<String, dynamic> json) {
  return _SubtitleTranslateDto.fromJson(json);
}

/// @nodoc
mixin _$SubtitleTranslateDto {
  String get pk => throw _privateConstructorUsedError;
  String get languageCode => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get subtitleOnePk => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubtitleTranslateDtoCopyWith<SubtitleTranslateDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubtitleTranslateDtoCopyWith<$Res> {
  factory $SubtitleTranslateDtoCopyWith(SubtitleTranslateDto value,
          $Res Function(SubtitleTranslateDto) then) =
      _$SubtitleTranslateDtoCopyWithImpl<$Res, SubtitleTranslateDto>;
  @useResult
  $Res call(
      {String pk, String languageCode, String text, String subtitleOnePk});
}

/// @nodoc
class _$SubtitleTranslateDtoCopyWithImpl<$Res,
        $Val extends SubtitleTranslateDto>
    implements $SubtitleTranslateDtoCopyWith<$Res> {
  _$SubtitleTranslateDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pk = null,
    Object? languageCode = null,
    Object? text = null,
    Object? subtitleOnePk = null,
  }) {
    return _then(_value.copyWith(
      pk: null == pk
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as String,
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      subtitleOnePk: null == subtitleOnePk
          ? _value.subtitleOnePk
          : subtitleOnePk // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubtitleTranslateDtoImplCopyWith<$Res>
    implements $SubtitleTranslateDtoCopyWith<$Res> {
  factory _$$SubtitleTranslateDtoImplCopyWith(_$SubtitleTranslateDtoImpl value,
          $Res Function(_$SubtitleTranslateDtoImpl) then) =
      __$$SubtitleTranslateDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String pk, String languageCode, String text, String subtitleOnePk});
}

/// @nodoc
class __$$SubtitleTranslateDtoImplCopyWithImpl<$Res>
    extends _$SubtitleTranslateDtoCopyWithImpl<$Res, _$SubtitleTranslateDtoImpl>
    implements _$$SubtitleTranslateDtoImplCopyWith<$Res> {
  __$$SubtitleTranslateDtoImplCopyWithImpl(_$SubtitleTranslateDtoImpl _value,
      $Res Function(_$SubtitleTranslateDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pk = null,
    Object? languageCode = null,
    Object? text = null,
    Object? subtitleOnePk = null,
  }) {
    return _then(_$SubtitleTranslateDtoImpl(
      pk: null == pk
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as String,
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      subtitleOnePk: null == subtitleOnePk
          ? _value.subtitleOnePk
          : subtitleOnePk // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubtitleTranslateDtoImpl implements _SubtitleTranslateDto {
  const _$SubtitleTranslateDtoImpl(
      {required this.pk,
      required this.languageCode,
      required this.text,
      required this.subtitleOnePk});

  factory _$SubtitleTranslateDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubtitleTranslateDtoImplFromJson(json);

  @override
  final String pk;
  @override
  final String languageCode;
  @override
  final String text;
  @override
  final String subtitleOnePk;

  @override
  String toString() {
    return 'SubtitleTranslateDto(pk: $pk, languageCode: $languageCode, text: $text, subtitleOnePk: $subtitleOnePk)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubtitleTranslateDtoImpl &&
            (identical(other.pk, pk) || other.pk == pk) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.subtitleOnePk, subtitleOnePk) ||
                other.subtitleOnePk == subtitleOnePk));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, pk, languageCode, text, subtitleOnePk);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubtitleTranslateDtoImplCopyWith<_$SubtitleTranslateDtoImpl>
      get copyWith =>
          __$$SubtitleTranslateDtoImplCopyWithImpl<_$SubtitleTranslateDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubtitleTranslateDtoImplToJson(
      this,
    );
  }
}

abstract class _SubtitleTranslateDto implements SubtitleTranslateDto {
  const factory _SubtitleTranslateDto(
      {required final String pk,
      required final String languageCode,
      required final String text,
      required final String subtitleOnePk}) = _$SubtitleTranslateDtoImpl;

  factory _SubtitleTranslateDto.fromJson(Map<String, dynamic> json) =
      _$SubtitleTranslateDtoImpl.fromJson;

  @override
  String get pk;
  @override
  String get languageCode;
  @override
  String get text;
  @override
  String get subtitleOnePk;
  @override
  @JsonKey(ignore: true)
  _$$SubtitleTranslateDtoImplCopyWith<_$SubtitleTranslateDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
