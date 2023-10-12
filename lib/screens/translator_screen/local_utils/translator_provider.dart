import 'package:flutter/material.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:youtube_translation/models/one_srt_model.dart';
import 'package:youtube_translation/models/one_translate_model.dart';
import 'package:youtube_translation/services/translate_https.dart';
import 'dart:convert';

import 'package:youtube_translation/utils/srt_split_util.dart';

class TranslatorProvider extends ChangeNotifier{

  final srtList = <OneSrtModel>[];

  late DropzoneViewController _dropzoneViewController;

  set setDropzoneViewController(DropzoneViewController controller){
    _dropzoneViewController = controller;
  }

  bool _dragDropState = false;
  bool get dragDropState => _dragDropState;
  set setDragDropState(bool state){
    if(_dragDropState != state) {
      _dragDropState = state;
      notifyListeners();
    }
  }

  Future readSrt(dynamic htmlFile) async{
    setDragDropState = false;
    var file = await _dropzoneViewController.getFileData(htmlFile);
    var txt = utf8.decode(file);
    var list = SrtSplitUtil(txt).split;
    for(var l in list){
      var text = await TranslateHttps.translate(l.text);
      print('text > > > $text');
      OneTranslateModel(
        period: l.time,
        english:
      );
      break;
    }
  }

}