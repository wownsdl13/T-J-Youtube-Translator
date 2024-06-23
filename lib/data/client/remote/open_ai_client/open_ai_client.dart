
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:retrofit/retrofit.dart';

part 'open_ai_client.g.dart';

@RestApi(baseUrl: OpenAiClient.baseUrl)
abstract class OpenAiClient {
  factory OpenAiClient(Dio dio, {String baseUrl}) = _OpenAiClient;
  static const baseUrl = 'https://api.openai.com/v1/';

  @POST('completions')
  Future<HttpResponse> translateText(
    @Header('Authorization') String authorization,
    @Header('Content-Type') String contentType,
    @Body() Map<String, dynamic> body,
  );
}
