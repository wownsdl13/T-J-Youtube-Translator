// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_percentage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UploadPercentage {
  int get percentage => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadPercentageCopyWith<UploadPercentage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadPercentageCopyWith<$Res> {
  factory $UploadPercentageCopyWith(
          UploadPercentage value, $Res Function(UploadPercentage) then) =
      _$UploadPercentageCopyWithImpl<$Res, UploadPercentage>;
  @useResult
  $Res call({int percentage, String text});
}

/// @nodoc
class _$UploadPercentageCopyWithImpl<$Res, $Val extends UploadPercentage>
    implements $UploadPercentageCopyWith<$Res> {
  _$UploadPercentageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percentage = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadPercentageImplCopyWith<$Res>
    implements $UploadPercentageCopyWith<$Res> {
  factory _$$UploadPercentageImplCopyWith(_$UploadPercentageImpl value,
          $Res Function(_$UploadPercentageImpl) then) =
      __$$UploadPercentageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int percentage, String text});
}

/// @nodoc
class __$$UploadPercentageImplCopyWithImpl<$Res>
    extends _$UploadPercentageCopyWithImpl<$Res, _$UploadPercentageImpl>
    implements _$$UploadPercentageImplCopyWith<$Res> {
  __$$UploadPercentageImplCopyWithImpl(_$UploadPercentageImpl _value,
      $Res Function(_$UploadPercentageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percentage = null,
    Object? text = null,
  }) {
    return _then(_$UploadPercentageImpl(
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UploadPercentageImpl implements _UploadPercentage {
  const _$UploadPercentageImpl({this.percentage = 0, this.text = ''});

  @override
  @JsonKey()
  final int percentage;
  @override
  @JsonKey()
  final String text;

  @override
  String toString() {
    return 'UploadPercentage(percentage: $percentage, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadPercentageImpl &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, percentage, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadPercentageImplCopyWith<_$UploadPercentageImpl> get copyWith =>
      __$$UploadPercentageImplCopyWithImpl<_$UploadPercentageImpl>(
          this, _$identity);
}

abstract class _UploadPercentage implements UploadPercentage {
  const factory _UploadPercentage({final int percentage, final String text}) =
      _$UploadPercentageImpl;

  @override
  int get percentage;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$UploadPercentageImplCopyWith<_$UploadPercentageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
