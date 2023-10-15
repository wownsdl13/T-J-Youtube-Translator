class VideoUploadModel{
  VideoUploadModel(this.name, this.videoStream);
  final Stream<List<int>> videoStream;
  final String name;
}