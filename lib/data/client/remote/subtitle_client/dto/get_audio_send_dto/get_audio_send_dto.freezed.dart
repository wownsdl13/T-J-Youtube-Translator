// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_audio_send_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAudioSendDto _$GetAudioSendDtoFromJson(Map<String, dynamic> json) {
  return _GetAudioSendDto.fromJson(json);
}

/// @nodoc
mixin _$GetAudioSendDto {
  List<MergeAudioDto> get srtList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAudioSendDtoCopyWith<GetAudioSendDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAudioSendDtoCopyWith<$Res> {
  factory $GetAudioSendDtoCopyWith(
          GetAudioSendDto value, $Res Function(GetAudioSendDto) then) =
      _$GetAudioSendDtoCopyWithImpl<$Res, GetAudioSendDto>;
  @useResult
  $Res call({List<MergeAudioDto> srtList});
}

/// @nodoc
class _$GetAudioSendDtoCopyWithImpl<$Res, $Val extends GetAudioSendDto>
    implements $GetAudioSendDtoCopyWith<$Res> {
  _$GetAudioSendDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? srtList = null,
  }) {
    return _then(_value.copyWith(
      srtList: null == srtList
          ? _value.srtList
          : srtList // ignore: cast_nullable_to_non_nullable
              as List<MergeAudioDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAudioSendDtoImplCopyWith<$Res>
    implements $GetAudioSendDtoCopyWith<$Res> {
  factory _$$GetAudioSendDtoImplCopyWith(_$GetAudioSendDtoImpl value,
          $Res Function(_$GetAudioSendDtoImpl) then) =
      __$$GetAudioSendDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MergeAudioDto> srtList});
}

/// @nodoc
class __$$GetAudioSendDtoImplCopyWithImpl<$Res>
    extends _$GetAudioSendDtoCopyWithImpl<$Res, _$GetAudioSendDtoImpl>
    implements _$$GetAudioSendDtoImplCopyWith<$Res> {
  __$$GetAudioSendDtoImplCopyWithImpl(
      _$GetAudioSendDtoImpl _value, $Res Function(_$GetAudioSendDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? srtList = null,
  }) {
    return _then(_$GetAudioSendDtoImpl(
      srtList: null == srtList
          ? _value._srtList
          : srtList // ignore: cast_nullable_to_non_nullable
              as List<MergeAudioDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAudioSendDtoImpl implements _GetAudioSendDto {
  const _$GetAudioSendDtoImpl({required final List<MergeAudioDto> srtList})
      : _srtList = srtList;

  factory _$GetAudioSendDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAudioSendDtoImplFromJson(json);

  final List<MergeAudioDto> _srtList;
  @override
  List<MergeAudioDto> get srtList {
    if (_srtList is EqualUnmodifiableListView) return _srtList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_srtList);
  }

  @override
  String toString() {
    return 'GetAudioSendDto(srtList: $srtList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAudioSendDtoImpl &&
            const DeepCollectionEquality().equals(other._srtList, _srtList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_srtList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAudioSendDtoImplCopyWith<_$GetAudioSendDtoImpl> get copyWith =>
      __$$GetAudioSendDtoImplCopyWithImpl<_$GetAudioSendDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAudioSendDtoImplToJson(
      this,
    );
  }
}

abstract class _GetAudioSendDto implements GetAudioSendDto {
  const factory _GetAudioSendDto({required final List<MergeAudioDto> srtList}) =
      _$GetAudioSendDtoImpl;

  factory _GetAudioSendDto.fromJson(Map<String, dynamic> json) =
      _$GetAudioSendDtoImpl.fromJson;

  @override
  List<MergeAudioDto> get srtList;
  @override
  @JsonKey(ignore: true)
  _$$GetAudioSendDtoImplCopyWith<_$GetAudioSendDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
