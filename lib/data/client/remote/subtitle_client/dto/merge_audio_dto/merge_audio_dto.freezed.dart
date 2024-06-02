// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merge_audio_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MergeAudioDto _$MergeAudioDtoFromJson(Map<String, dynamic> json) {
  return _MergeAudioDto.fromJson(json);
}

/// @nodoc
mixin _$MergeAudioDto {
  String get period => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MergeAudioDtoCopyWith<MergeAudioDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MergeAudioDtoCopyWith<$Res> {
  factory $MergeAudioDtoCopyWith(
          MergeAudioDto value, $Res Function(MergeAudioDto) then) =
      _$MergeAudioDtoCopyWithImpl<$Res, MergeAudioDto>;
  @useResult
  $Res call({String period, String text});
}

/// @nodoc
class _$MergeAudioDtoCopyWithImpl<$Res, $Val extends MergeAudioDto>
    implements $MergeAudioDtoCopyWith<$Res> {
  _$MergeAudioDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MergeAudioDtoImplCopyWith<$Res>
    implements $MergeAudioDtoCopyWith<$Res> {
  factory _$$MergeAudioDtoImplCopyWith(
          _$MergeAudioDtoImpl value, $Res Function(_$MergeAudioDtoImpl) then) =
      __$$MergeAudioDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String period, String text});
}

/// @nodoc
class __$$MergeAudioDtoImplCopyWithImpl<$Res>
    extends _$MergeAudioDtoCopyWithImpl<$Res, _$MergeAudioDtoImpl>
    implements _$$MergeAudioDtoImplCopyWith<$Res> {
  __$$MergeAudioDtoImplCopyWithImpl(
      _$MergeAudioDtoImpl _value, $Res Function(_$MergeAudioDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = null,
    Object? text = null,
  }) {
    return _then(_$MergeAudioDtoImpl(
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MergeAudioDtoImpl implements _MergeAudioDto {
  const _$MergeAudioDtoImpl({required this.period, required this.text});

  factory _$MergeAudioDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MergeAudioDtoImplFromJson(json);

  @override
  final String period;
  @override
  final String text;

  @override
  String toString() {
    return 'MergeAudioDto(period: $period, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MergeAudioDtoImpl &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, period, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MergeAudioDtoImplCopyWith<_$MergeAudioDtoImpl> get copyWith =>
      __$$MergeAudioDtoImplCopyWithImpl<_$MergeAudioDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MergeAudioDtoImplToJson(
      this,
    );
  }
}

abstract class _MergeAudioDto implements MergeAudioDto {
  const factory _MergeAudioDto(
      {required final String period,
      required final String text}) = _$MergeAudioDtoImpl;

  factory _MergeAudioDto.fromJson(Map<String, dynamic> json) =
      _$MergeAudioDtoImpl.fromJson;

  @override
  String get period;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$MergeAudioDtoImplCopyWith<_$MergeAudioDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
