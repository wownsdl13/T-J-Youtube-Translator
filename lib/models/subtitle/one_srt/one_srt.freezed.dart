// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'one_srt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OneSrt {
  int get order => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get period => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OneSrtCopyWith<OneSrt> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneSrtCopyWith<$Res> {
  factory $OneSrtCopyWith(OneSrt value, $Res Function(OneSrt) then) =
      _$OneSrtCopyWithImpl<$Res, OneSrt>;
  @useResult
  $Res call({int order, String text, String period});
}

/// @nodoc
class _$OneSrtCopyWithImpl<$Res, $Val extends OneSrt>
    implements $OneSrtCopyWith<$Res> {
  _$OneSrtCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? text = null,
    Object? period = null,
  }) {
    return _then(_value.copyWith(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OneSrtImplCopyWith<$Res> implements $OneSrtCopyWith<$Res> {
  factory _$$OneSrtImplCopyWith(
          _$OneSrtImpl value, $Res Function(_$OneSrtImpl) then) =
      __$$OneSrtImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int order, String text, String period});
}

/// @nodoc
class __$$OneSrtImplCopyWithImpl<$Res>
    extends _$OneSrtCopyWithImpl<$Res, _$OneSrtImpl>
    implements _$$OneSrtImplCopyWith<$Res> {
  __$$OneSrtImplCopyWithImpl(
      _$OneSrtImpl _value, $Res Function(_$OneSrtImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? text = null,
    Object? period = null,
  }) {
    return _then(_$OneSrtImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OneSrtImpl implements _OneSrt {
  const _$OneSrtImpl(
      {required this.order, required this.text, required this.period});

  @override
  final int order;
  @override
  final String text;
  @override
  final String period;

  @override
  String toString() {
    return 'OneSrt(order: $order, text: $text, period: $period)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OneSrtImpl &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.period, period) || other.period == period));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order, text, period);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OneSrtImplCopyWith<_$OneSrtImpl> get copyWith =>
      __$$OneSrtImplCopyWithImpl<_$OneSrtImpl>(this, _$identity);
}

abstract class _OneSrt implements OneSrt {
  const factory _OneSrt(
      {required final int order,
      required final String text,
      required final String period}) = _$OneSrtImpl;

  @override
  int get order;
  @override
  String get text;
  @override
  String get period;
  @override
  @JsonKey(ignore: true)
  _$$OneSrtImplCopyWith<_$OneSrtImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
