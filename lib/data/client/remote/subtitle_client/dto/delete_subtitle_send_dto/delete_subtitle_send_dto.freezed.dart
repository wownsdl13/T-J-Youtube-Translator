// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_subtitle_send_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteSubtitleSendDto _$DeleteSubtitleSendDtoFromJson(
    Map<String, dynamic> json) {
  return _DeleteSubtitleSendDto.fromJson(json);
}

/// @nodoc
mixin _$DeleteSubtitleSendDto {
  String get pk => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteSubtitleSendDtoCopyWith<DeleteSubtitleSendDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteSubtitleSendDtoCopyWith<$Res> {
  factory $DeleteSubtitleSendDtoCopyWith(DeleteSubtitleSendDto value,
          $Res Function(DeleteSubtitleSendDto) then) =
      _$DeleteSubtitleSendDtoCopyWithImpl<$Res, DeleteSubtitleSendDto>;
  @useResult
  $Res call({String pk});
}

/// @nodoc
class _$DeleteSubtitleSendDtoCopyWithImpl<$Res,
        $Val extends DeleteSubtitleSendDto>
    implements $DeleteSubtitleSendDtoCopyWith<$Res> {
  _$DeleteSubtitleSendDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pk = null,
  }) {
    return _then(_value.copyWith(
      pk: null == pk
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteSubtitleSendDtoImplCopyWith<$Res>
    implements $DeleteSubtitleSendDtoCopyWith<$Res> {
  factory _$$DeleteSubtitleSendDtoImplCopyWith(
          _$DeleteSubtitleSendDtoImpl value,
          $Res Function(_$DeleteSubtitleSendDtoImpl) then) =
      __$$DeleteSubtitleSendDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pk});
}

/// @nodoc
class __$$DeleteSubtitleSendDtoImplCopyWithImpl<$Res>
    extends _$DeleteSubtitleSendDtoCopyWithImpl<$Res,
        _$DeleteSubtitleSendDtoImpl>
    implements _$$DeleteSubtitleSendDtoImplCopyWith<$Res> {
  __$$DeleteSubtitleSendDtoImplCopyWithImpl(_$DeleteSubtitleSendDtoImpl _value,
      $Res Function(_$DeleteSubtitleSendDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pk = null,
  }) {
    return _then(_$DeleteSubtitleSendDtoImpl(
      pk: null == pk
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteSubtitleSendDtoImpl implements _DeleteSubtitleSendDto {
  const _$DeleteSubtitleSendDtoImpl({required this.pk});

  factory _$DeleteSubtitleSendDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteSubtitleSendDtoImplFromJson(json);

  @override
  final String pk;

  @override
  String toString() {
    return 'DeleteSubtitleSendDto(pk: $pk)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteSubtitleSendDtoImpl &&
            (identical(other.pk, pk) || other.pk == pk));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pk);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteSubtitleSendDtoImplCopyWith<_$DeleteSubtitleSendDtoImpl>
      get copyWith => __$$DeleteSubtitleSendDtoImplCopyWithImpl<
          _$DeleteSubtitleSendDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteSubtitleSendDtoImplToJson(
      this,
    );
  }
}

abstract class _DeleteSubtitleSendDto implements DeleteSubtitleSendDto {
  const factory _DeleteSubtitleSendDto({required final String pk}) =
      _$DeleteSubtitleSendDtoImpl;

  factory _DeleteSubtitleSendDto.fromJson(Map<String, dynamic> json) =
      _$DeleteSubtitleSendDtoImpl.fromJson;

  @override
  String get pk;
  @override
  @JsonKey(ignore: true)
  _$$DeleteSubtitleSendDtoImplCopyWith<_$DeleteSubtitleSendDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
