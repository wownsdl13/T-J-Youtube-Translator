// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_upload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VideoUpload {
  String get name => throw _privateConstructorUsedError;
  Stream<List<int>> get videoStream => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoUploadCopyWith<VideoUpload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoUploadCopyWith<$Res> {
  factory $VideoUploadCopyWith(
          VideoUpload value, $Res Function(VideoUpload) then) =
      _$VideoUploadCopyWithImpl<$Res, VideoUpload>;
  @useResult
  $Res call({String name, Stream<List<int>> videoStream, int size});
}

/// @nodoc
class _$VideoUploadCopyWithImpl<$Res, $Val extends VideoUpload>
    implements $VideoUploadCopyWith<$Res> {
  _$VideoUploadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? videoStream = null,
    Object? size = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      videoStream: null == videoStream
          ? _value.videoStream
          : videoStream // ignore: cast_nullable_to_non_nullable
              as Stream<List<int>>,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoUploadImplCopyWith<$Res>
    implements $VideoUploadCopyWith<$Res> {
  factory _$$VideoUploadImplCopyWith(
          _$VideoUploadImpl value, $Res Function(_$VideoUploadImpl) then) =
      __$$VideoUploadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Stream<List<int>> videoStream, int size});
}

/// @nodoc
class __$$VideoUploadImplCopyWithImpl<$Res>
    extends _$VideoUploadCopyWithImpl<$Res, _$VideoUploadImpl>
    implements _$$VideoUploadImplCopyWith<$Res> {
  __$$VideoUploadImplCopyWithImpl(
      _$VideoUploadImpl _value, $Res Function(_$VideoUploadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? videoStream = null,
    Object? size = null,
  }) {
    return _then(_$VideoUploadImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      videoStream: null == videoStream
          ? _value.videoStream
          : videoStream // ignore: cast_nullable_to_non_nullable
              as Stream<List<int>>,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$VideoUploadImpl implements _VideoUpload {
  const _$VideoUploadImpl(
      {required this.name, required this.videoStream, required this.size});

  @override
  final String name;
  @override
  final Stream<List<int>> videoStream;
  @override
  final int size;

  @override
  String toString() {
    return 'VideoUpload(name: $name, videoStream: $videoStream, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoUploadImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.videoStream, videoStream) ||
                other.videoStream == videoStream) &&
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, videoStream, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoUploadImplCopyWith<_$VideoUploadImpl> get copyWith =>
      __$$VideoUploadImplCopyWithImpl<_$VideoUploadImpl>(this, _$identity);
}

abstract class _VideoUpload implements VideoUpload {
  const factory _VideoUpload(
      {required final String name,
      required final Stream<List<int>> videoStream,
      required final int size}) = _$VideoUploadImpl;

  @override
  String get name;
  @override
  Stream<List<int>> get videoStream;
  @override
  int get size;
  @override
  @JsonKey(ignore: true)
  _$$VideoUploadImplCopyWith<_$VideoUploadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
