import 'dart:typed_data';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:youtube_translation/screens/share_screen/share_provider/share_state/share_state.dart';

part 'share_provider.g.dart';

@Riverpod()
class Share extends _$Share{
  @override
  ShareState build(){
    return const ShareState();
  }



  void readSrt(Uint8List data){

  }
}