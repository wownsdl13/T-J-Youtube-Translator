import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_upload.freezed.dart';

@Freezed()
class VideoUpload with _$VideoUpload{
  const factory VideoUpload(
      {required String name,
      required Stream<List<int>> videoStream,
      required int size}) = _VideoUpload;
}
