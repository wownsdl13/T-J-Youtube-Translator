import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:youtube_translation/data/client/remote/open_ai_client/open_ai_client.dart';
import 'package:youtube_translation/data/repository/remote/open_ai_repository/open_ai_repository_state/open_ai_repository_state.dart';

part 'open_ai_repository.g.dart';

@Riverpod()//
class OpenAiRepository extends _$OpenAiRepository{
  @override
  OpenAiRepositoryState build(){
    final client = OpenAiClient(Dio());
    return OpenAiRepositoryState(client: client);
  }
}