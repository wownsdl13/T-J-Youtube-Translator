class OneTranslateModel {
  static const String original = 'original';//원본
  static const String ko = 'ko';//한국어
  static const String en = 'en';//영어
  static const String ja = 'ja';//일본어
  static const String fr = 'fr';//프랑스어
  static const String zh = 'zh';//중국어
  static const String es = 'es';//스페인어

  static List<String> get langList => [ko, en, ja, fr, zh, es];

  static String langName(String languageCode){
    switch(languageCode){
      case OneTranslateModel.original:
        return 'Original';
      case OneTranslateModel.ko:
        return 'Korean';
      case OneTranslateModel.en:
        return 'English';
      case OneTranslateModel.ja:
        return 'Japanese';
      case OneTranslateModel.fr:
        return 'French';
      case OneTranslateModel.zh:
        return 'Chinese';
      case OneTranslateModel.es:
        return 'Spanish';
    }
    return '';
  }
  OneTranslateModel({
    required this.order,
    required this.period,
    required Map<String, String> translations
  })  : _translations = translations;

  final Map<String, String> _translations;

  final int order;
  final String period;

  void setLang(String languageCode, String text){
    _translations[languageCode] = text;
  }

  String getLang(String languageCode, {bool addQuotesAndBracket = false}){
    if(addQuotesAndBracket){
      return _convert(_translations[languageCode]!);
    }else{
      return _translations[languageCode]!;
    }
  }

  String _convert(String text) {
    if (quotes) {
      return '"$text"';
    }
    if (bracket) {
      return '($text)';
    }
    return text;
  }

  bool _quotes = false;

  bool get quotes => _quotes;

  set setQuotes(bool show) {
    _quotes = show;
    if (show && bracket) {
      setBracket = false;
    }
  }

  bool _bracket = false;

  bool get bracket => _bracket;

  set setBracket(bool show) {
    _bracket = show;
    if (show && quotes) {
      setQuotes = false;
    }
  }
}
