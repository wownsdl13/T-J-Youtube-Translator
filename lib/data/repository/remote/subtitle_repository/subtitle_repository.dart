import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:token_dio/token_dio.dart';
import 'package:youtube_translation/data/client/remote/subtitle_client/dto/delete_subtitle_send_dto/delete_subtitle_send_dto.dart';
import 'package:youtube_translation/data/client/remote/subtitle_client/dto/upload_subtitle_send_dto/subtitle_one_dto/subtitle_one_dto.dart';
import 'package:youtube_translation/data/client/remote/subtitle_client/dto/upload_subtitle_send_dto/upload_subtitle_send_dto.dart';
import 'package:youtube_translation/data/client/remote/subtitle_client/subtitle_client.dart';
import 'package:youtube_translation/data/repository/remote/subtitle_repository/subtitle_repository_state/subtitle_repository_state.dart';
import 'package:youtube_translation/models/translate/translate.dart';

part 'subtitle_repository.g.dart';

@Riverpod()
class SubtitleRepository extends _$SubtitleRepository {
  @override
  SubtitleRepositoryState build() {
    return SubtitleRepositoryState(subtitleClient: _subtitleClient);
  }

  // set subtitle part to long wait. for get audio
  SubtitleClient get _subtitleClient {
    var dio = TokenDio.accessDio;
    dio.options.connectTimeout = const Duration(minutes: 30);
    dio.options.receiveTimeout = const Duration(minutes: 30);
    dio.options.sendTimeout = const Duration(minutes: 30);
    return SubtitleClient(dio);
  }

  Future uploadSubtitle({required Translate translate}) async {
    try {
      await _subtitleClient.uploadSubtitle(UploadSubtitleSendDto(
          pk: translate.pk,
          subtitles: translate.translates
              .map((one) => SubtitleOneDto(
                  order: one.order,
                  period: one.period,
                  translations: one.translations,
                  subtitleOneType: one.subtitleOneType))
              .toList()));
    } catch (e) {
      print('e > $e');
    }
  }

  Future deleteSubtitle({required Translate translate}) async {
    await _subtitleClient
        .deleteSubtitle(DeleteSubtitleSendDto(pk: translate.pk));
  }
}
