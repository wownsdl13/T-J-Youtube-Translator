import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:token_dio/token_dio.dart';
import 'package:youtube_translation/provider/screen_provider/screen_provider.dart';

part 'initialize_provider.g.dart';

@Riverpod()
Future<bool> initialize(InitializeRef ref) async {
  await TokenDio.initialize(
      baseURL: 'http://localhost:3003',
      getAccessTokenPath: '/user/get_access_token',
      getAccessTokenBodyBuilder: () async => {
            'accessToken': await ref.read(screenProvider).googleAccessToken
          });
  return true;
}
