import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'open_ai_client.g.dart';

@RestApi(baseUrl: 'api.openai.com/v1/')
abstract class OpenAiClient {
  factory OpenAiClient(Dio dio, {String baseUrl}) = _OpenAiClient;

  @POST('audio/transcriptions')
  @MultiPart()
  Future<HttpResponse> transcribeAudio(
    @Header('Authorization') String authorization,
    @Part(name: 'file') File file,
  );

  @POST('completions')
  Future<HttpResponse> translateText(
    @Header('Authorization') String authorization,
    @Header('Content-Type') String contentType,
    @Body() Map<String, dynamic> body,
  );
}
