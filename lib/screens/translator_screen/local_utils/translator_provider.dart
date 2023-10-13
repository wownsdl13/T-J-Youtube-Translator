import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:youtube_translation/models/one_translate_model.dart';
import 'package:youtube_translation/services/translate_https.dart';
import 'package:youtube_translation/utils/chat_gpt_key.dart';
import 'dart:convert';

import 'package:youtube_translation/utils/srt_split_util.dart';

class TranslatorProvider extends ChangeNotifier {
  final srtList = <OneTranslateModel>[];

  String _languageCode = OneTranslateModel.en;
  String get languageCode => _languageCode;
  set setLanguageCode(String languageCode){
    _languageCode = languageCode;
    notifyListeners();
  }

  var _title = '';
  Map<String, String>? _translatedTitle;

  String? get translatedTitle => _translatedTitle?[_languageCode];

  Future translateTitle(String controllerText) async {
    if (_title != controllerText && await ChatGPTKey.hasKey) {
      _title = controllerText;
      _translatedTitle = await TranslateHttps.translateTxt(_title);
      notifyListeners();
    }
  }

  var _description = '';
  Map<String, String>? _translatedDescription;

  String? get translatedDescription => _translatedDescription?[_languageCode];

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
        var lang = await TranslateHttps.translateTxt(l.text);
        srtList.add(OneTranslateModel(
          order: l.order,
          period: l.time,
          translations: lang,
        ));
        notifyListeners();
        break;
      }
      _reading = false;
      notifyListeners();
    }
    setDragDropState = false;
  }

  void changeQuotes(OneTranslateModel model, bool state) {
    model.setQuotes = state;
    notifyListeners();
  }

  void changeBracket(OneTranslateModel model, bool state) {
    model.setBracket = state;
    notifyListeners();
  }

  bool _addOriginal = true;
  bool get addOriginal => _addOriginal;
  set setAddOriginal(bool addOriginal){
    _addOriginal = addOriginal;
    notifyListeners();
  }

  void download() {
    if (!reading && srtList.isNotEmpty) {
      String text = '';
      for (var srt in srtList) {
        text += '${srt.order}\n';
        text += '${srt.period}\n';
        if(addOriginal) {
          text += '${srt.getLang(OneTranslateModel.original)}\n';
        }
        text += '${srt.getLang(languageCode)}\n';
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
