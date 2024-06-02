// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Translate {
  String get pk => throw _privateConstructorUsedError;
  int get createTime => throw _privateConstructorUsedError;
  List<OneTranslate> get translates => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TranslateCopyWith<Translate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslateCopyWith<$Res> {
  factory $TranslateCopyWith(Translate value, $Res Function(Translate) then) =
      _$TranslateCopyWithImpl<$Res, Translate>;
  @useResult
  $Res call({String pk, int createTime, List<OneTranslate> translates});
}

/// @nodoc
class _$TranslateCopyWithImpl<$Res, $Val extends Translate>
    implements $TranslateCopyWith<$Res> {
  _$TranslateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pk = null,
    Object? createTime = null,
    Object? translates = null,
  }) {
    return _then(_value.copyWith(
      pk: null == pk
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as int,
      translates: null == translates
          ? _value.translates
          : translates // ignore: cast_nullable_to_non_nullable
              as List<OneTranslate>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TranslateImplCopyWith<$Res>
    implements $TranslateCopyWith<$Res> {
  factory _$$TranslateImplCopyWith(
          _$TranslateImpl value, $Res Function(_$TranslateImpl) then) =
      __$$TranslateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pk, int createTime, List<OneTranslate> translates});
}

/// @nodoc
class __$$TranslateImplCopyWithImpl<$Res>
    extends _$TranslateCopyWithImpl<$Res, _$TranslateImpl>
    implements _$$TranslateImplCopyWith<$Res> {
  __$$TranslateImplCopyWithImpl(
      _$TranslateImpl _value, $Res Function(_$TranslateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pk = null,
    Object? createTime = null,
    Object? translates = null,
  }) {
    return _then(_$TranslateImpl(
      pk: null == pk
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as int,
      translates: null == translates
          ? _value._translates
          : translates // ignore: cast_nullable_to_non_nullable
              as List<OneTranslate>,
    ));
  }
}

/// @nodoc

class _$TranslateImpl extends _Translate {
  const _$TranslateImpl(
      {required this.pk,
      required this.createTime,
      required final List<OneTranslate> translates})
      : _translates = translates,
        super._();

  @override
  final String pk;
  @override
  final int createTime;
  final List<OneTranslate> _translates;
  @override
  List<OneTranslate> get translates {
    if (_translates is EqualUnmodifiableListView) return _translates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_translates);
  }

  @override
  String toString() {
    return 'Translate(pk: $pk, createTime: $createTime, translates: $translates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslateImpl &&
            (identical(other.pk, pk) || other.pk == pk) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            const DeepCollectionEquality()
                .equals(other._translates, _translates));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pk, createTime,
      const DeepCollectionEquality().hash(_translates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslateImplCopyWith<_$TranslateImpl> get copyWith =>
      __$$TranslateImplCopyWithImpl<_$TranslateImpl>(this, _$identity);
}

abstract class _Translate extends Translate {
  const factory _Translate(
      {required final String pk,
      required final int createTime,
      required final List<OneTranslate> translates}) = _$TranslateImpl;
  const _Translate._() : super._();

  @override
  String get pk;
  @override
  int get createTime;
  @override
  List<OneTranslate> get translates;
  @override
  @JsonKey(ignore: true)
  _$$TranslateImplCopyWith<_$TranslateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
