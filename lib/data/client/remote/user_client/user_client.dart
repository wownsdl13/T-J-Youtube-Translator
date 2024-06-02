import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:youtube_translation/data/client/remote/user_client/dto/get_refresh_token_dto/get_refresh_token_dto.dart';
import 'package:youtube_translation/data/client/remote/user_client/dto/update_description_header_dto/update_description_header_dto.dart';
import 'package:youtube_translation/data/client/remote/user_client/dto/update_open_ai_api_key_dto/update_open_ai_api_key_dto.dart';
import 'package:youtube_translation/data/client/remote/user_client/dto/update_tags_dto/update_tags_dto.dart';
import 'package:youtube_translation/data/client/remote/user_client/dto/update_title_header_dto/update_title_header_dto.dart';
import 'package:youtube_translation/data/client/remote/user_client/dto/update_youtube_api_key_dto/update_youtube_api_key_dto.dart';

part 'user_client.g.dart';

@RestApi(baseUrl: 'user')
abstract class UserClient {
  factory UserClient(Dio dio, {String baseUrl}) = _UserClient;

  @POST('/get_refresh_token')
  Future getRefreshToken(@Body() GetRefreshTokenDto getRefreshTokenDto);

  @GET('/get_tags')
  Future getTags();

  @POST('/update_tags')
  Future updateTags(@Body() UpdateTagsDto updateTagsDto);

  @POST('/update_youtube_api_key')
  Future updateYoutubeApiKey(@Body() UpdateYoutubeApiKeyDto updateYoutubeApiKeyDto);

  @GET('/get_youtube_api_key')
  Future getYoutubeApiKey();

  @POST('/update_title_header')
  Future updateTitleHeader(@Body() UpdateTitleHeaderDto updateTitleHeaderDto);

  @GET('/get_title_header')
  Future getTitleHeader();

  @POST('/update_description_header')
  Future updateDescriptionHeader(@Body() UpdateDescriptionHeaderDto updateDescriptionHeaderDto);

  @GET('/get_description_header')
  Future getDescriptionHeader();

  @POST('/update_open_ai_api_key')
  Future updateOpenAiApiKey(@Body() UpdateOpenAiApiKeyDto updateOpenAiApiKeyDto);

  @GET('/get_open_ai_api_key')
  Future getOpenAiApiKey();
}
