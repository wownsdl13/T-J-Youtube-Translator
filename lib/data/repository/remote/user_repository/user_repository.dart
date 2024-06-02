import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:token_dio/token_dio.dart';
import 'package:youtube_translation/data/client/remote/user_client/dto/get_refresh_token_dto/get_refresh_token_dto.dart';
import 'package:youtube_translation/data/client/remote/user_client/dto/update_description_header_dto/update_description_header_dto.dart';
import 'package:youtube_translation/data/client/remote/user_client/dto/update_open_ai_api_key_dto/update_open_ai_api_key_dto.dart';
import 'package:youtube_translation/data/client/remote/user_client/dto/update_tags_dto/update_tags_dto.dart';
import 'package:youtube_translation/data/client/remote/user_client/dto/update_title_header_dto/update_title_header_dto.dart';
import 'package:youtube_translation/data/client/remote/user_client/dto/update_youtube_api_key_dto/update_youtube_api_key_dto.dart';
import 'package:youtube_translation/data/client/remote/user_client/user_client.dart';
import 'package:youtube_translation/data/repository/remote/user_repository/user_repository_state/user_repository_state.dart';

part 'user_repository.g.dart';

@Riverpod()
class UserRepository extends _$UserRepository {
  @override
  UserRepositoryState build() {
    return UserRepositoryState(
        userNoneClient: _userNoneClient,
        userAccessClient: _userAccessClient,
        userRefreshClient: _userRefreshClient);
  }

  UserClient get _userNoneClient => UserClient(TokenDio.noneDio);

  UserClient get _userAccessClient => UserClient(TokenDio.accessDio);

  UserClient get _userRefreshClient => UserClient(TokenDio.refreshDio);

  Future setRefreshToken({required String accessToken}) async{
    var test = await _userNoneClient.getRefreshToken(GetRefreshTokenDto(accessToken: accessToken));
  }

  Future updateTags({required List<String> tags}) async {
    await _userAccessClient.updateTags(UpdateTagsDto(tags: tags));
  }

  Future updateYoutubeApikey({required String key}) async {
    await _userAccessClient
        .updateYoutubeApiKey(UpdateYoutubeApiKeyDto(key: key));
  }

  Future updateTitleHeader({required String txt}) async {
    await _userAccessClient.updateTitleHeader(UpdateTitleHeaderDto(txt: txt));
  }

  Future updateDescriptionHeader({required String txt}) async {
    await _userAccessClient
        .updateDescriptionHeader(UpdateDescriptionHeaderDto(txt: txt));
  }

  Future updateOpenAiApiKey({required String key}) async {
    await _userAccessClient.updateOpenAiApiKey(UpdateOpenAiApiKeyDto(key: key));
  }
}
