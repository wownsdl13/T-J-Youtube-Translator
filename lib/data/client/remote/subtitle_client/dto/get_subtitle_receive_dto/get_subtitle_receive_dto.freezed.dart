// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_subtitle_receive_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetSubtitleReceiveDto _$GetSubtitleReceiveDtoFromJson(
    Map<String, dynamic> json) {
  return _GetSubtitleReceiveDto.fromJson(json);
}

/// @nodoc
mixin _$GetSubtitleReceiveDto {
  String get pk => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _fromJsonTimestamp, toJson: _toJsonTimestamp)
  DateTime get createTime => throw _privateConstructorUsedError;
  List<SubtitleDto> get subtitles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetSubtitleReceiveDtoCopyWith<GetSubtitleReceiveDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSubtitleReceiveDtoCopyWith<$Res> {
  factory $GetSubtitleReceiveDtoCopyWith(GetSubtitleReceiveDto value,
          $Res Function(GetSubtitleReceiveDto) then) =
      _$GetSubtitleReceiveDtoCopyWithImpl<$Res, GetSubtitleReceiveDto>;
  @useResult
  $Res call(
      {String pk,
      @JsonKey(fromJson: _fromJsonTimestamp, toJson: _toJsonTimestamp)
      DateTime createTime,
      List<SubtitleDto> subtitles});
}

/// @nodoc
class _$GetSubtitleReceiveDtoCopyWithImpl<$Res,
        $Val extends GetSubtitleReceiveDto>
    implements $GetSubtitleReceiveDtoCopyWith<$Res> {
  _$GetSubtitleReceiveDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pk = null,
    Object? createTime = null,
    Object? subtitles = null,
  }) {
    return _then(_value.copyWith(
      pk: null == pk
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      subtitles: null == subtitles
          ? _value.subtitles
          : subtitles // ignore: cast_nullable_to_non_nullable
              as List<SubtitleDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetSubtitleReceiveDtoImplCopyWith<$Res>
    implements $GetSubtitleReceiveDtoCopyWith<$Res> {
  factory _$$GetSubtitleReceiveDtoImplCopyWith(
          _$GetSubtitleReceiveDtoImpl value,
          $Res Function(_$GetSubtitleReceiveDtoImpl) then) =
      __$$GetSubtitleReceiveDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String pk,
      @JsonKey(fromJson: _fromJsonTimestamp, toJson: _toJsonTimestamp)
      DateTime createTime,
      List<SubtitleDto> subtitles});
}

/// @nodoc
class __$$GetSubtitleReceiveDtoImplCopyWithImpl<$Res>
    extends _$GetSubtitleReceiveDtoCopyWithImpl<$Res,
        _$GetSubtitleReceiveDtoImpl>
    implements _$$GetSubtitleReceiveDtoImplCopyWith<$Res> {
  __$$GetSubtitleReceiveDtoImplCopyWithImpl(_$GetSubtitleReceiveDtoImpl _value,
      $Res Function(_$GetSubtitleReceiveDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pk = null,
    Object? createTime = null,
    Object? subtitles = null,
  }) {
    return _then(_$GetSubtitleReceiveDtoImpl(
      pk: null == pk
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      subtitles: null == subtitles
          ? _value._subtitles
          : subtitles // ignore: cast_nullable_to_non_nullable
              as List<SubtitleDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetSubtitleReceiveDtoImpl extends _GetSubtitleReceiveDto {
  const _$GetSubtitleReceiveDtoImpl(
      {required this.pk,
      @JsonKey(fromJson: _fromJsonTimestamp, toJson: _toJsonTimestamp)
      required this.createTime,
      required final List<SubtitleDto> subtitles})
      : _subtitles = subtitles,
        super._();

  factory _$GetSubtitleReceiveDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetSubtitleReceiveDtoImplFromJson(json);

  @override
  final String pk;
  @override
  @JsonKey(fromJson: _fromJsonTimestamp, toJson: _toJsonTimestamp)
  final DateTime createTime;
  final List<SubtitleDto> _subtitles;
  @override
  List<SubtitleDto> get subtitles {
    if (_subtitles is EqualUnmodifiableListView) return _subtitles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subtitles);
  }

  @override
  String toString() {
    return 'GetSubtitleReceiveDto(pk: $pk, createTime: $createTime, subtitles: $subtitles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSubtitleReceiveDtoImpl &&
            (identical(other.pk, pk) || other.pk == pk) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            const DeepCollectionEquality()
                .equals(other._subtitles, _subtitles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pk, createTime,
      const DeepCollectionEquality().hash(_subtitles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSubtitleReceiveDtoImplCopyWith<_$GetSubtitleReceiveDtoImpl>
      get copyWith => __$$GetSubtitleReceiveDtoImplCopyWithImpl<
          _$GetSubtitleReceiveDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetSubtitleReceiveDtoImplToJson(
      this,
    );
  }
}

abstract class _GetSubtitleReceiveDto extends GetSubtitleReceiveDto {
  const factory _GetSubtitleReceiveDto(
          {required final String pk,
          @JsonKey(fromJson: _fromJsonTimestamp, toJson: _toJsonTimestamp)
          required final DateTime createTime,
          required final List<SubtitleDto> subtitles}) =
      _$GetSubtitleReceiveDtoImpl;
  const _GetSubtitleReceiveDto._() : super._();

  factory _GetSubtitleReceiveDto.fromJson(Map<String, dynamic> json) =
      _$GetSubtitleReceiveDtoImpl.fromJson;

  @override
  String get pk;
  @override
  @JsonKey(fromJson: _fromJsonTimestamp, toJson: _toJsonTimestamp)
  DateTime get createTime;
  @override
  List<SubtitleDto> get subtitles;
  @override
  @JsonKey(ignore: true)
  _$$GetSubtitleReceiveDtoImplCopyWith<_$GetSubtitleReceiveDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
