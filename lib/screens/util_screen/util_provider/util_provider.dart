import 'dart:convert';
import 'dart:typed_data';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:youtube_translation/data/repository/remote/open_ai_repository/open_ai_repository.dart';
import 'package:youtube_translation/provider/screen_provider/screen_provider.dart';
import 'package:youtube_translation/screens/util_screen/util_provider/util_state/util_state.dart';
import 'dart:html' as html;

import 'package:youtube_translation/utils/loading_text.dart';

part 'util_provider.g.dart';

@Riverpod()
class Util extends _$Util {
  @override
  UtilState build() {
    return const UtilState();
  }

  Future voiceToAudio(Future<Uint8List> futureData) async {
    state = state.copyWith(loading: LoadingText('voice to audio loading...'));
    var data = await futureData;
    var openAiApiKey = await ref.read(screenProvider).getOpenAiApiKey;
    print('..11');
    var result = await ref
        .read(openAiRepositoryProvider)
        .transcribeAudio(data, openAiApiKey: openAiApiKey);
    print('..22');
    _downloadData(Uint8List.fromList(utf8.encode(result)),
        name: 'to audio-${DateTime.now().millisecondsSinceEpoch}.srt');
    print('..33');
  }



  void _downloadData(Uint8List data, {required String name}) {
    // Encode our file in base64
    final base64 = base64Encode(data);
    final anchor =
        html.AnchorElement(href: 'data:application/octet-stream;base64,$base64')
          ..target = 'blank';
    // add the name
    anchor.download = name;
    // trigger download
    html.document.body?.append(anchor);
    anchor.click();
    anchor.remove();
  }
}
