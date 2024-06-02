import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_translation/data/client/remote/user_client/user_client.dart';

part 'user_repository_state.freezed.dart';

@Freezed()
class UserRepositoryState with _$UserRepositoryState {
  const factory UserRepositoryState({
    required UserClient userNoneClient,
    required UserClient userAccessClient,
    required UserClient userRefreshClient,
  }) = _UserRepositoryState;

  const UserRepositoryState._();

  Future<List<String>> getTags() async {
    var result = await userAccessClient.getTags();
    return (result['tags'] as List).map((e) => e.toString()).toList();
  }

  Future<String> getYoutubeApiKey() async {
    var result = await userAccessClient.getOpenAiApiKey();
    return result['youtubeApiKey'];
  }

  Future<String> getTitleHeader() async {
    var result = await userAccessClient.getTitleHeader();
    return result['titleHeader'];
  }

  Future<String> getDescriptionHeader() async {
    var result = await userAccessClient.getDescriptionHeader();
    return result['descriptionHeader'];
  }

  Future<String> getOpenAiApiKey() async {
    var result = await userAccessClient.getOpenAiApiKey();
    return result['openAiApiKey'];
  }
}
