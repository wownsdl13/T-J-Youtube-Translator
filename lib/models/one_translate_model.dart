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
  static const String it = 'it'; //이탈리아어
  static const String de = 'de'; //독일어
  static const String ms = 'ms'; //말레이어
  static const String ru = 'ru'; //러시아어
  static const String uk = 'uk'; //우크라이나어
  static const String pt = 'pt'; //포르투갈어
  static const String tr = 'tr'; //터키어
  static const String hu = 'hu'; //헝가리어
  static const String el = 'el'; //그리스어
  static const String sv = 'sv'; //스웨덴어
  static const String no = 'no'; //노르웨이어
  static const String fi = 'fi'; //핀란드어
  static const String be = 'be'; //벨라루스어
  static const String ro = 'ro'; //루마니아어
  static const String bg = 'bg'; //불가리아어
  static const String sr = 'sr'; //세르비아어
  static const String uz = 'uz'; //우즈베크어
  static const String kk = 'kk'; //카자흐어
  static const String sq = 'sq'; //알바니아어
  static const String cs = 'cs'; //체코어
  static const String pl = 'pl'; //폴란드어
  static const String hr = 'hr'; //크로아티아어
  static const String sk = 'sk'; //슬로바키아어
  static const String lt = 'lt'; //리투아니아어
  static const String lv = 'lv'; //라트비아어
  static const String et = 'et'; //에스토니아어
  static const String sl = 'sl'; //슬로베니아어
  static const String az = 'az'; //아제르바이잔어
  static const String ka = 'ka'; //조지아어
  static const String id = 'id'; // 인도네시아어
  static const String th = 'th'; // 태국어
  static const String hi = 'hi'; // 힌디어
  static const String tl = 'tl'; // 필리핀어

  static List<String> get blogLangList =>
      [ko, en, zh, es, id, pt, ru, ja, de, fr, it, tr, vi, th, pl, nl, hi, hu];

  //id, th, hi

  static List<String> get langList => [
        ko,
        en,
        ja,
        fr,
        zh,
        es,
        vi,
        ar,
        nl,
        de,
        ms,
        ru,
        uk,
        it,
        pt,
        tr,
        hu,
        el,
        sv,
        no,
        fi,
        be,
        ro,
        bg,
        sr,
        uz,
        kk,
        sq,
        cs,
        pl,
        hr,
        sk,
        lt,
        lv,
        et,
        sl,
        az,
        ka,
        id,
        th,
        hi,
        tl
      ];

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
        return 'Vietnamese';
      case OneTranslateModel.ar:
        return 'Arabic';
      case OneTranslateModel.nl:
        return 'Dutch';
      case OneTranslateModel.de:
        return 'German';
      case OneTranslateModel.ms:
        return 'Malay';
      case OneTranslateModel.ru:
        return 'Russian';
      case OneTranslateModel.uk:
        return 'Ukrainian';
      case OneTranslateModel.it:
        return 'Italian';
      case OneTranslateModel.pt:
        return 'Portuguese';
      case OneTranslateModel.tr:
        return 'Turkish';
      case OneTranslateModel.hu:
        return 'Hungarian';
      case OneTranslateModel.el:
        return 'Greek';
      case OneTranslateModel.sv:
        return 'Swedish';
      case OneTranslateModel.no:
        return 'Norwegian';
      case OneTranslateModel.fi:
        return 'Finnish';
      case OneTranslateModel.be:
        return 'Belarusian';
      case OneTranslateModel.ro:
        return 'Romanian';
      case OneTranslateModel.bg:
        return 'Bulgarian';
      case OneTranslateModel.sr:
        return 'Serbian';
      case OneTranslateModel.uz:
        return 'Uzbek';
      case OneTranslateModel.kk:
        return 'Kazakh';
      case OneTranslateModel.sq:
        return 'Albanian';
      case OneTranslateModel.cs:
        return 'Czech';
      case OneTranslateModel.pl:
        return 'Polish';
      case OneTranslateModel.hr:
        return 'Croatian';
      case OneTranslateModel.sk:
        return 'Slovak';
      case OneTranslateModel.lt:
        return 'Lithuanian';
      case OneTranslateModel.lv:
        return 'Latvian';
      case OneTranslateModel.et:
        return 'Estonian';
      case OneTranslateModel.sl:
        return 'Slovenian';
      case OneTranslateModel.az:
        return 'Azerbaijani';
      case OneTranslateModel.ka:
        return 'Georgian';
      case OneTranslateModel.id:
        return 'Indonesian';
      case OneTranslateModel.th:
        return 'Thai';
      case OneTranslateModel.hi:
        return 'Hindi';
      case OneTranslateModel.tl:
        return 'Filipino';
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
      if (_translations[languageCode] == null) {}
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
