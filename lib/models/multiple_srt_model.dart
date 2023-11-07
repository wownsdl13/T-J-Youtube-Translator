import 'package:youtube_translation/models/one_srt_model.dart';
import 'package:youtube_translation/models/one_translate_model.dart';

class MultipleSrtModel{
  MultipleSrtModel(OneSrtModel originalModel){
    _models[OneTranslateModel.original] = originalModel;
  }
  final _models = <String, OneSrtModel>{};
  void addOne(String lang, String text){
    _models[lang] = OneSrtModel(order, time, text);
  }
  String get originalText => _models[OneTranslateModel.original]!.text;
  String get time => _models[OneTranslateModel.original]!.time;
  int get order => _models[OneTranslateModel.original]!.order;

  OneTranslateModel get translationModel{
    final translations = <String, String>{};
    for(var lang in _models.keys){
      translations[lang] = _models[lang]!.text;
    }
    return OneTranslateModel(order: order, period: time, translations: translations);
  }
}