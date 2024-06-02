import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:youtube_translation/data/client/remote/youtube_client/dto/post_comment_dto/post_comment_dto.dart';
import 'package:youtube_translation/data/client/remote/youtube_client/dto/set_youtube_localizations_dto/set_youtube_localizations_dto.dart';
import 'package:youtube_translation/data/client/remote/youtube_client/dto/upload_caption_dto/upload_caption_dto.dart';

part 'youtube_client.g.dart';

@RestApi(baseUrl: 'youtube')
abstract class YoutubeClient {
  factory YoutubeClient(Dio dio, {String baseUrl}) = _YoutubeClient;

  @POST('/set_video_localizations')
  Future setVideoLocalizations(
      @Body() SetYoutubeLocalizationsDto setYoutubeLocalizationsDto);

  @PUT('/upload_caption')
  Future uploadCaption(@Body() UploadCaptionDto uploadCaptionDto);

  @PUT('/post_comment')
  Future postComment(@Body() PostCommentDto postCommentDto);

  @MultiPart()
  @POST("/upload_thumbnail")
  Future<HttpResponse> uploadThumbnail(@Body() FormData formData);
}
