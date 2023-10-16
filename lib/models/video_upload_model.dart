class VideoUploadModel{
  VideoUploadModel(this.name, this.videoStream, this.size);
  final Stream<List<int>> videoStream;
  final String name;
  final int size;
}