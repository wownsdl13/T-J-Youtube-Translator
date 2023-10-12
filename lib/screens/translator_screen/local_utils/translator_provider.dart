import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:youtube_translation/models/lang_text_model.dart';
import 'package:youtube_translation/models/one_translate_model.dart';
import 'package:youtube_translation/services/translate_https.dart';
import 'package:youtube_translation/utils/chat_gpt_key.dart';
import 'dart:convert';

import 'package:youtube_translation/utils/srt_split_util.dart';

class TranslatorProvider extends ChangeNotifier {
  final srtList = <OneTranslateModel>[];

  var _title = '';
  String? _translatedTitle;

  String? get translatedTitle => _translatedTitle;

  Future translateTitle(String controllerText) async {
    if (_title != controllerText && await ChatGPTKey.hasKey) {
      _title = controllerText;
      _translatedTitle = await TranslateHttps.translateTxt(_title);
      notifyListeners();
    }
  }

  var _description = '';
  String? _translatedDescription;

  String? get translatedDescription => _translatedDescription;

  Future translateDescription(String controllerText) async {
    if (_description != controllerText && await ChatGPTKey.hasKey) {
      _description = controllerText;
      _translatedDescription = await TranslateHttps.translateTxt(_description);
      notifyListeners();
    }
  }

  late DropzoneViewController _dropzoneViewController;

  set setDropzoneViewController(DropzoneViewController controller) {
    _dropzoneViewController = controller;
  }

  bool _dragDropState = false;

  bool get dragDropState => _dragDropState;

  set setDragDropState(bool state) {
    if (_dragDropState != state) {
      _dragDropState = state;
      notifyListeners();
    }
  }

  bool _reading = false;

  bool get reading => _reading;

  Future readSrt(dynamic htmlFile) async {
    if (!_reading && await ChatGPTKey.hasKey) {
      _reading = true;
      setDragDropState = false;
      var file = await _dropzoneViewController.getFileData(htmlFile);
      var txt = utf8.decode(file);
      var list = SrtSplitUtil(txt).split;
      for (var l in list) {
        var text = await TranslateHttps.translateSrt(l.text);
        srtList.add(OneTranslateModel(
          order: l.order,
          period: l.time,
          english: text.en,
          korean: text.ko,
        ));
        notifyListeners();
        break;
      }
      _reading = false;
      notifyListeners();
    }
  }

  void changeQuotes(OneTranslateModel model, bool state) {
    model.setQuotes = state;
    notifyListeners();
  }

  void changeBracket(OneTranslateModel model, bool state) {
    model.setBracket = state;
    notifyListeners();
  }

  void download() {
    if (!reading && srtList.isNotEmpty) {
      String text = '';
      for(var srt in srtList){
        text += '${srt.order}\n';
        text += '${srt.period}\n';
        text += '${srt.korean}\n';
        text += '${srt.english}\n';
        text += '\n';
      }
      text = text.trim();

      // Encode our file in base64
      final base64 = base64Encode(Uint8List.fromList(utf8.encode(text)));
      // Create the link with the file
      final anchor =
          AnchorElement(href: 'data:application/octet-stream;base64,$base64')
            ..target = 'blank';
      // add the name
      anchor.download = 'subtitle-${DateTime.now().millisecondsSinceEpoch}.srt';
      // trigger download
      document.body?.append(anchor);
      anchor.click();
      anchor.remove();
      return;
    }
  }
}
