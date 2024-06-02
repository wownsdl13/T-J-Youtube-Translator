import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:youtube_translation/data/repository/remote/user_repository/user_repository_state/user_repository_state.dart';
import 'package:youtube_translation/data/repository/remote/youtube_repository/youtube_repository_state/youtube_repository_state.dart';
import 'package:youtube_translation/models/upload_percentage/upload_percentage.dart';
import 'package:youtube_translation/models/video_upload/video_upload.dart';
import 'package:youtube_translation/screens/translator_screen/translator_provider/enum/video_input_type.dart';
import 'package:youtube_translation/screens/translator_screen/translator_provider/translator_state/sub_state/translator_data_state/translator_data_state.dart';
import 'package:youtube_translation/screens/translator_screen/translator_provider/translator_state/sub_state/translator_loading_state/translator_loading_state.dart';
part 'translator_state.freezed.dart';

@Freezed()
class TranslatorState with _$TranslatorState {
  const factory TranslatorState({
    @Default(VideoInputType.file) VideoInputType videoInputType,
    UploadPercentage? uploadPercentage,
    VideoUpload? videoUpload,
    @Default(false) bool addOriginal,
    required TranslatorDataState translatorDataState,
    @Default(TranslatorLoadingState())
    TranslatorLoadingState translatorLoadingState,
    //repositories
    @protected required YoutubeRepositoryState youtubeRepositoryState,
    @protected required UserRepositoryState userRepositoryState,
  }) = _TranslatorState;
  const TranslatorState._();


  bool get hasVideo => videoUpload != null;

  String get videoName => videoUpload!.name;


  Future<String> get getYoutubeApiKey async {
    return await userRepositoryState.getYoutubeApiKey();
  }

  bool get readyToUpload {
    switch (videoInputType) {
      case VideoInputType.file:
        // TODO: Handle this case.
        return hasVideo &&
            translatorDataState.translatedTitle != null &&
            translatorDataState.translatedDescription != null;
      case VideoInputType.videoId:
        return translatorDataState.videoId.isNotEmpty;
    }
  }

  int get uploadPercentageNumber => uploadPercentage!.percentage;

  String get uploadText => uploadPercentage!.text;

  bool get isUploading => uploadPercentage != null;
}
