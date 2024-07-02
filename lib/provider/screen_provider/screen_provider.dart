import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:youtube_translation/data/repository/remote/user_repository/user_repository.dart';
import 'package:youtube_translation/provider/screen_provider/enum/screen_type.dart';
import 'package:youtube_translation/provider/screen_provider/screen_state/screen_state.dart';
import 'package:youtube_translation/screens/translator_screen/translator_provider/translator_provider.dart';
import 'package:youtube_translation/utils/languages.dart';

part 'screen_provider.g.dart';

//
@Riverpod(keepAlive: true)
class Screen extends _$Screen {
  @override
  ScreenState build() {
    var userRepositoryState = ref.read(userRepositoryProvider);
    return ScreenState(
        languageCode: Languages.en, userRepositoryState: userRepositoryState);
  }

  final _googleSignIn = GoogleSignIn(
      scopes: [
        'https://www.googleapis.com/auth/youtube.upload',
        'https://www.googleapis.com/auth/youtube.force-ssl',
      ],
      clientId:
          '133538713387-d4jnbid8v4v1tl6p7f4v29afpdns94tl.apps.googleusercontent.com');

  set setScreenType(ScreenType screenType){
    state = state.copyWith(screenType: screenType);
  }

  Future login() async {
    var googleId = await _googleSignIn.signIn();
    if (googleId != null) {
      var googleAccessToken = (await googleId.authentication).accessToken;
      if (googleAccessToken != null) {
        await ref
            .read(userRepositoryProvider.notifier)
            .setRefreshToken(accessToken: googleAccessToken);
        state = state.copyWith(googleId: googleId);
        await ref.read(translatorProvider.notifier).tagInit();
      }
    }
  }

  Future loginCheck() async {
    var signedIn = await _googleSignIn.isSignedIn();
    if (signedIn) {
      state = state.copyWith(googleId: _googleSignIn.currentUser);
    }
  }

  set setLanguageCode(String lang) {
    state = state.copyWith(languageCode: lang);
  }
}
