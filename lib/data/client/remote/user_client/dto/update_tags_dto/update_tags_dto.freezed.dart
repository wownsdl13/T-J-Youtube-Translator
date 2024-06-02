// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_tags_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateTagsDto _$UpdateTagsDtoFromJson(Map<String, dynamic> json) {
  return _UpdateTagsDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateTagsDto {
  List<String> get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateTagsDtoCopyWith<UpdateTagsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTagsDtoCopyWith<$Res> {
  factory $UpdateTagsDtoCopyWith(
          UpdateTagsDto value, $Res Function(UpdateTagsDto) then) =
      _$UpdateTagsDtoCopyWithImpl<$Res, UpdateTagsDto>;
  @useResult
  $Res call({List<String> tags});
}

/// @nodoc
class _$UpdateTagsDtoCopyWithImpl<$Res, $Val extends UpdateTagsDto>
    implements $UpdateTagsDtoCopyWith<$Res> {
  _$UpdateTagsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateTagsDtoImplCopyWith<$Res>
    implements $UpdateTagsDtoCopyWith<$Res> {
  factory _$$UpdateTagsDtoImplCopyWith(
          _$UpdateTagsDtoImpl value, $Res Function(_$UpdateTagsDtoImpl) then) =
      __$$UpdateTagsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> tags});
}

/// @nodoc
class __$$UpdateTagsDtoImplCopyWithImpl<$Res>
    extends _$UpdateTagsDtoCopyWithImpl<$Res, _$UpdateTagsDtoImpl>
    implements _$$UpdateTagsDtoImplCopyWith<$Res> {
  __$$UpdateTagsDtoImplCopyWithImpl(
      _$UpdateTagsDtoImpl _value, $Res Function(_$UpdateTagsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
  }) {
    return _then(_$UpdateTagsDtoImpl(
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateTagsDtoImpl implements _UpdateTagsDto {
  const _$UpdateTagsDtoImpl({required final List<String> tags}) : _tags = tags;

  factory _$UpdateTagsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateTagsDtoImplFromJson(json);

  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'UpdateTagsDto(tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTagsDtoImpl &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTagsDtoImplCopyWith<_$UpdateTagsDtoImpl> get copyWith =>
      __$$UpdateTagsDtoImplCopyWithImpl<_$UpdateTagsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTagsDtoImplToJson(
      this,
    );
  }
}

abstract class _UpdateTagsDto implements UpdateTagsDto {
  const factory _UpdateTagsDto({required final List<String> tags}) =
      _$UpdateTagsDtoImpl;

  factory _UpdateTagsDto.fromJson(Map<String, dynamic> json) =
      _$UpdateTagsDtoImpl.fromJson;

  @override
  List<String> get tags;
  @override
  @JsonKey(ignore: true)
  _$$UpdateTagsDtoImplCopyWith<_$UpdateTagsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
