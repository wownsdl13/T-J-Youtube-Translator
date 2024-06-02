// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_description_header_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateDescriptionHeaderDto _$UpdateDescriptionHeaderDtoFromJson(
    Map<String, dynamic> json) {
  return _UpdateDescriptionHeaderDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateDescriptionHeaderDto {
  String get txt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateDescriptionHeaderDtoCopyWith<UpdateDescriptionHeaderDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateDescriptionHeaderDtoCopyWith<$Res> {
  factory $UpdateDescriptionHeaderDtoCopyWith(UpdateDescriptionHeaderDto value,
          $Res Function(UpdateDescriptionHeaderDto) then) =
      _$UpdateDescriptionHeaderDtoCopyWithImpl<$Res,
          UpdateDescriptionHeaderDto>;
  @useResult
  $Res call({String txt});
}

/// @nodoc
class _$UpdateDescriptionHeaderDtoCopyWithImpl<$Res,
        $Val extends UpdateDescriptionHeaderDto>
    implements $UpdateDescriptionHeaderDtoCopyWith<$Res> {
  _$UpdateDescriptionHeaderDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$UpdateDescriptionHeaderDtoImplCopyWith<$Res>
    implements $UpdateDescriptionHeaderDtoCopyWith<$Res> {
  factory _$$UpdateDescriptionHeaderDtoImplCopyWith(
          _$UpdateDescriptionHeaderDtoImpl value,
          $Res Function(_$UpdateDescriptionHeaderDtoImpl) then) =
      __$$UpdateDescriptionHeaderDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String txt});
}

/// @nodoc
class __$$UpdateDescriptionHeaderDtoImplCopyWithImpl<$Res>
    extends _$UpdateDescriptionHeaderDtoCopyWithImpl<$Res,
        _$UpdateDescriptionHeaderDtoImpl>
    implements _$$UpdateDescriptionHeaderDtoImplCopyWith<$Res> {
  __$$UpdateDescriptionHeaderDtoImplCopyWithImpl(
      _$UpdateDescriptionHeaderDtoImpl _value,
      $Res Function(_$UpdateDescriptionHeaderDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txt = null,
  }) {
    return _then(_$UpdateDescriptionHeaderDtoImpl(
      txt: null == txt
          ? _value.txt
          : txt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateDescriptionHeaderDtoImpl implements _UpdateDescriptionHeaderDto {
  const _$UpdateDescriptionHeaderDtoImpl({required this.txt});

  factory _$UpdateDescriptionHeaderDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateDescriptionHeaderDtoImplFromJson(json);

  @override
  final String txt;

  @override
  String toString() {
    return 'UpdateDescriptionHeaderDto(txt: $txt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDescriptionHeaderDtoImpl &&
            (identical(other.txt, txt) || other.txt == txt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, txt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDescriptionHeaderDtoImplCopyWith<_$UpdateDescriptionHeaderDtoImpl>
      get copyWith => __$$UpdateDescriptionHeaderDtoImplCopyWithImpl<
          _$UpdateDescriptionHeaderDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateDescriptionHeaderDtoImplToJson(
      this,
    );
  }
}

abstract class _UpdateDescriptionHeaderDto
    implements UpdateDescriptionHeaderDto {
  const factory _UpdateDescriptionHeaderDto({required final String txt}) =
      _$UpdateDescriptionHeaderDtoImpl;

  factory _UpdateDescriptionHeaderDto.fromJson(Map<String, dynamic> json) =
      _$UpdateDescriptionHeaderDtoImpl.fromJson;

  @override
  String get txt;
  @override
  @JsonKey(ignore: true)
  _$$UpdateDescriptionHeaderDtoImplCopyWith<_$UpdateDescriptionHeaderDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
