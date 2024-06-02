// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_title_header_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateTitleHeaderDto _$UpdateTitleHeaderDtoFromJson(Map<String, dynamic> json) {
  return _UpdateTitleHeaderDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateTitleHeaderDto {
  String get txt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateTitleHeaderDtoCopyWith<UpdateTitleHeaderDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTitleHeaderDtoCopyWith<$Res> {
  factory $UpdateTitleHeaderDtoCopyWith(UpdateTitleHeaderDto value,
          $Res Function(UpdateTitleHeaderDto) then) =
      _$UpdateTitleHeaderDtoCopyWithImpl<$Res, UpdateTitleHeaderDto>;
  @useResult
  $Res call({String txt});
}

/// @nodoc
class _$UpdateTitleHeaderDtoCopyWithImpl<$Res,
        $Val extends UpdateTitleHeaderDto>
    implements $UpdateTitleHeaderDtoCopyWith<$Res> {
  _$UpdateTitleHeaderDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txt = null,
  }) {
    return _then(_value.copyWith(
      txt: null == txt
          ? _value.txt
          : txt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateTitleHeaderDtoImplCopyWith<$Res>
    implements $UpdateTitleHeaderDtoCopyWith<$Res> {
  factory _$$UpdateTitleHeaderDtoImplCopyWith(_$UpdateTitleHeaderDtoImpl value,
          $Res Function(_$UpdateTitleHeaderDtoImpl) then) =
      __$$UpdateTitleHeaderDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String txt});
}

/// @nodoc
class __$$UpdateTitleHeaderDtoImplCopyWithImpl<$Res>
    extends _$UpdateTitleHeaderDtoCopyWithImpl<$Res, _$UpdateTitleHeaderDtoImpl>
    implements _$$UpdateTitleHeaderDtoImplCopyWith<$Res> {
  __$$UpdateTitleHeaderDtoImplCopyWithImpl(_$UpdateTitleHeaderDtoImpl _value,
      $Res Function(_$UpdateTitleHeaderDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txt = null,
  }) {
    return _then(_$UpdateTitleHeaderDtoImpl(
      txt: null == txt
          ? _value.txt
          : txt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateTitleHeaderDtoImpl implements _UpdateTitleHeaderDto {
  const _$UpdateTitleHeaderDtoImpl({required this.txt});

  factory _$UpdateTitleHeaderDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateTitleHeaderDtoImplFromJson(json);

  @override
  final String txt;

  @override
  String toString() {
    return 'UpdateTitleHeaderDto(txt: $txt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTitleHeaderDtoImpl &&
            (identical(other.txt, txt) || other.txt == txt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, txt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTitleHeaderDtoImplCopyWith<_$UpdateTitleHeaderDtoImpl>
      get copyWith =>
          __$$UpdateTitleHeaderDtoImplCopyWithImpl<_$UpdateTitleHeaderDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTitleHeaderDtoImplToJson(
      this,
    );
  }
}

abstract class _UpdateTitleHeaderDto implements UpdateTitleHeaderDto {
  const factory _UpdateTitleHeaderDto({required final String txt}) =
      _$UpdateTitleHeaderDtoImpl;

  factory _UpdateTitleHeaderDto.fromJson(Map<String, dynamic> json) =
      _$UpdateTitleHeaderDtoImpl.fromJson;

  @override
  String get txt;
  @override
  @JsonKey(ignore: true)
  _$$UpdateTitleHeaderDtoImplCopyWith<_$UpdateTitleHeaderDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
