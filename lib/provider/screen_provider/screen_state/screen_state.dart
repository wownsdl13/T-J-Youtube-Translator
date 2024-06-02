import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:youtube_translation/data/repository/remote/user_repository/user_repository_state/user_repository_state.dart';
import 'package:youtube_translation/provider/screen_provider/enum/screen_type.dart';

part 'screen_state.freezed.dart';

@Freezed()
class ScreenState with _$ScreenState {
  const factory ScreenState({
    @Default(ScreenType.share) ScreenType screenType,
    GoogleSignInAccount? googleId,
    required UserRepositoryState userRepositoryState,
    required String languageCode,
}) = _ScreenState;
  const ScreenState._();

  bool get isLogin => googleId != null;
  Future<String?> get googleAccessToken async => (await googleId?.authentication)?.accessToken;

  Future<String> get getOpenAiApiKey async {
    return await userRepositoryState.getOpenAiApiKey();
  }
}