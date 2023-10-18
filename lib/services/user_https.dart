import 'dart:convert';

import 'package:youtube_translation/services/root_https.dart';
import 'package:youtube_translation/utils/global_extension.dart';
import 'package:youtube_translation/utils/key_storage.dart';

class UserHttps extends RootHttps {
  UserHttps(super.googleSignInAccount);

  Future getRefreshToken(String accessToken) async {
    var result = await post('get_refresh_token', {'accessToken': accessToken});
    if (result.isOk) {
      await KeyStorage.setToken(
          refreshToken: jsonDecode(result.body)['refreshToken']);
    }
  }

  Future<List<String>> get getTags async{
    var result = await get('get_tags');
    if(result.isOk){
      return (jsonDecode(result.body)['tags'] as List).map((e) => e.toString()).toList();
    }
    return [];
  }

  Future updateTags(List<String> tags) async{
    var result = await post('update_tags', {'tags':tags});
  }

  Future updateYoutubeApiKey(String key) async{
    var result = await post('update_youtube_api_key', {'key':key});
  }

  @override
  // TODO: implement path
  String get path => 'user';
}
