class OneTranslateModel {
  static const String original = 'original'; //원본
  static const String ko = 'ko'; //한국어
  static const String en = 'en'; //영어
  static const String ja = 'ja'; //일본어
  static const String fr = 'fr'; //프랑스어
  static const String zh = 'zh'; //중국어
  static const String es = 'es'; //스페인어
  static const String vi = 'vi'; //베트남어
  static const String ar = 'ar'; //아랍어
  static const String nl = 'nl'; //네덜란드어
  static const String de = 'de'; //독일어
  static const String ms = 'ms'; //말레이어
  static const String ru = 'ru'; //러시아어
  static const String uk = 'uk'; //우크라이나어

  static List<String> get langList =>
      [ko, en, ja, fr, zh, es, vi, ar, nl, de, ms, ru, uk];

  static String langName(String languageCode) {
    switch (languageCode) {
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
      case OneTranslateModel.vi:
        return 'Vietnam';
      case OneTranslateModel.ar:
        return 'Arab';
      case OneTranslateModel.nl:
        return 'Dutch';
      case OneTranslateModel.de:
        return 'German';
      case OneTranslateModel.ms:
        return 'Malaysia';
      case OneTranslateModel.ru:
        return 'Russia';
      case OneTranslateModel.uk:
        return 'Ukraine';
    }
    return '';
  }

  OneTranslateModel(
      {required this.order,
      required this.period,
      required Map<String, String> translations})
      : _translations = translations;

  final Map<String, String> _translations;

  final int order;
  final String period;

  void setLang(String languageCode, String text) {
    _translations[languageCode] = text;
  }

  String getLang(String languageCode, {bool addQuotesAndBracket = false}) {
    if (addQuotesAndBracket) {
      return _convert(_translations[languageCode]!);
    } else {
      if(_translations[languageCode] == null) {
      }
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

  bool _quotes = true;

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
