import 'dart:typed_data';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:youtube_translation/screens/util_screen/util_provider/util_state/util_state.dart';

part 'util_provider.g.dart';

@Riverpod()
class Util extends _$Util{
  @override
  UtilState build(){
    return const UtilState();
  }



  void readSrt(Uint8List data){

  }
}