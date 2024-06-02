import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:youtube_translation/data/client/remote/subtitle_client/dto/delete_subtitle_send_dto/delete_subtitle_send_dto.dart';
import 'package:youtube_translation/data/client/remote/subtitle_client/dto/get_audio_send_dto/get_audio_send_dto.dart';
import 'package:youtube_translation/data/client/remote/subtitle_client/dto/get_subtitle_receive_dto/get_subtitle_receive_dto.dart';
import 'package:youtube_translation/data/client/remote/subtitle_client/dto/upload_subtitle_send_dto/upload_subtitle_send_dto.dart';
import 'package:youtube_translation/data/client/remote/subtitle_client/enum/get_subtitle_direction.dart';

part 'subtitle_client.g.dart';

@RestApi(baseUrl: 'subtitle')
abstract class SubtitleClient {
  factory SubtitleClient(Dio dio, {String baseUrl}) = _SubtitleClient;

  @GET('/get_subtitle')
  Future<GetSubtitleReceiveDto?> getSubtitle(@Query('pk') String pk, @Query('getSubtitleDirection') GetSubtitleDirection getSubtitleDirection);

  @POST('/upload_subtitle')
  Future uploadSubtitle(@Body() UploadSubtitleSendDto dto);

  @DELETE('/delete_subtitle')
  Future deleteSubtitle(@Body() DeleteSubtitleSendDto dto);

  @POST('/get_audio')
  @DioResponseType(ResponseType.bytes)
  Future<HttpResponse<List<int>>> getAudio(@Body() GetAudioSendDto dto);
}
