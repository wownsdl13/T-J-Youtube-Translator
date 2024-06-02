// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_subtitle_send_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UploadSubtitleSendDto _$UploadSubtitleSendDtoFromJson(
    Map<String, dynamic> json) {
  return _UploadSubtitleSendDto.fromJson(json);
}

/// @nodoc
mixin _$UploadSubtitleSendDto {
  String get pk => throw _privateConstructorUsedError;
  List<SubtitleOneDto> get subtitles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadSubtitleSendDtoCopyWith<UploadSubtitleSendDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadSubtitleSendDtoCopyWith<$Res> {
  factory $UploadSubtitleSendDtoCopyWith(UploadSubtitleSendDto value,
          $Res Function(UploadSubtitleSendDto) then) =
      _$UploadSubtitleSendDtoCopyWithImpl<$Res, UploadSubtitleSendDto>;
  @useResult
  $Res call({String pk, List<SubtitleOneDto> subtitles});
}

/// @nodoc
class _$UploadSubtitleSendDtoCopyWithImpl<$Res,
        $Val extends UploadSubtitleSendDto>
    implements $UploadSubtitleSendDtoCopyWith<$Res> {
  _$UploadSubtitleSendDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pk = null,
    Object? subtitles = null,
  }) {
    return _then(_value.copyWith(
      pk: null == pk
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as String,
      subtitles: null == subtitles
          ? _value.subtitles
          : subtitles // ignore: cast_nullable_to_non_nullable
              as List<SubtitleOneDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadSubtitleSendDtoImplCopyWith<$Res>
    implements $UploadSubtitleSendDtoCopyWith<$Res> {
  factory _$$UploadSubtitleSendDtoImplCopyWith(
          _$UploadSubtitleSendDtoImpl value,
          $Res Function(_$UploadSubtitleSendDtoImpl) then) =
      __$$UploadSubtitleSendDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pk, List<SubtitleOneDto> subtitles});
}

/// @nodoc
class __$$UploadSubtitleSendDtoImplCopyWithImpl<$Res>
    extends _$UploadSubtitleSendDtoCopyWithImpl<$Res,
        _$UploadSubtitleSendDtoImpl>
    implements _$$UploadSubtitleSendDtoImplCopyWith<$Res> {
  __$$UploadSubtitleSendDtoImplCopyWithImpl(_$UploadSubtitleSendDtoImpl _value,
      $Res Function(_$UploadSubtitleSendDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pk = null,
    Object? subtitles = null,
  }) {
    return _then(_$UploadSubtitleSendDtoImpl(
      pk: null == pk
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as String,
      subtitles: null == subtitles
          ? _value._subtitles
          : subtitles // ignore: cast_nullable_to_non_nullable
              as List<SubtitleOneDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadSubtitleSendDtoImpl implements _UploadSubtitleSendDto {
  const _$UploadSubtitleSendDtoImpl(
      {required this.pk, required final List<SubtitleOneDto> subtitles})
      : _subtitles = subtitles;

  factory _$UploadSubtitleSendDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadSubtitleSendDtoImplFromJson(json);

  @override
  final String pk;
  final List<SubtitleOneDto> _subtitles;
  @override
  List<SubtitleOneDto> get subtitles {
    if (_subtitles is EqualUnmodifiableListView) return _subtitles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subtitles);
  }

  @override
  String toString() {
    return 'UploadSubtitleSendDto(pk: $pk, subtitles: $subtitles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadSubtitleSendDtoImpl &&
            (identical(other.pk, pk) || other.pk == pk) &&
            const DeepCollectionEquality()
                .equals(other._subtitles, _subtitles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, pk, const DeepCollectionEquality().hash(_subtitles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadSubtitleSendDtoImplCopyWith<_$UploadSubtitleSendDtoImpl>
      get copyWith => __$$UploadSubtitleSendDtoImplCopyWithImpl<
          _$UploadSubtitleSendDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadSubtitleSendDtoImplToJson(
      this,
    );
  }
}

abstract class _UploadSubtitleSendDto implements UploadSubtitleSendDto {
  const factory _UploadSubtitleSendDto(
          {required final String pk,
          required final List<SubtitleOneDto> subtitles}) =
      _$UploadSubtitleSendDtoImpl;

  factory _UploadSubtitleSendDto.fromJson(Map<String, dynamic> json) =
      _$UploadSubtitleSendDtoImpl.fromJson;

  @override
  String get pk;
  @override
  List<SubtitleOneDto> get subtitles;
  @override
  @JsonKey(ignore: true)
  _$$UploadSubtitleSendDtoImplCopyWith<_$UploadSubtitleSendDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
