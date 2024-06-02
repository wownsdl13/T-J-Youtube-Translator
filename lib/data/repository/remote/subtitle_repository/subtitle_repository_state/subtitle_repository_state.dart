import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:youtube_translation/data/client/remote/subtitle_client/dto/get_audio_send_dto/get_audio_send_dto.dart';
import 'package:youtube_translation/data/client/remote/subtitle_client/dto/merge_audio_dto/merge_audio_dto.dart';
import 'package:youtube_translation/data/client/remote/subtitle_client/enum/get_subtitle_direction.dart';
import 'package:youtube_translation/data/client/remote/subtitle_client/subtitle_client.dart';
import 'package:youtube_translation/models/translate/translate.dart';

part 'subtitle_repository_state.freezed.dart';

@Freezed()
class SubtitleRepositoryState with _$SubtitleRepositoryState {
  const factory SubtitleRepositoryState({
    required SubtitleClient subtitleClient,
  }) = _SubtitleRepositoryState;

  const SubtitleRepositoryState._();

  Future<Translate> getSubtitle(
      {required String pk, required GetSubtitleDirection direction}) async {
    var result = await subtitleClient.getSubtitle(pk, direction);
    if (result != null) {
      return result.toTranslate();
    }
    return Translate(
        pk: const Uuid().v1(),
        createTime: DateTime.now().millisecondsSinceEpoch,
        translates: []);
  }

  Future<Uint8List> getAudio({required List<MergeAudioDto> srtList}) async{
    try {
      var result = await subtitleClient.getAudio(GetAudioSendDto(srtList: srtList));
      return Uint8List.fromList(result.data);
    }catch(e){
      throw Error();
    }
  }
}
