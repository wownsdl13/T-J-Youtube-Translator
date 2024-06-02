class Languages{
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
      case Languages.original:
        return 'Original';
      case Languages.ko:
        return 'Korean';
      case Languages.en:
        return 'English';
      case Languages.ja:
        return 'Japanese';
      case Languages.fr:
        return 'French';
      case Languages.zh:
        return 'Chinese';
      case Languages.es:
        return 'Spanish';
      case Languages.vi:
        return 'Vietnamese';
      case Languages.ar:
        return 'Arabic';
      case Languages.nl:
        return 'Dutch';
      case Languages.de:
        return 'German';
      case Languages.ms:
        return 'Malay';
      case Languages.ru:
        return 'Russian';
      case Languages.uk:
        return 'Ukrainian';
      case Languages.it:
        return 'Italian';
      case Languages.pt:
        return 'Portuguese';
      case Languages.tr:
        return 'Turkish';
      case Languages.hu:
        return 'Hungarian';
      case Languages.el:
        return 'Greek';
      case Languages.sv:
        return 'Swedish';
      case Languages.no:
        return 'Norwegian';
      case Languages.fi:
        return 'Finnish';
      case Languages.be:
        return 'Belarusian';
      case Languages.ro:
        return 'Romanian';
      case Languages.bg:
        return 'Bulgarian';
      case Languages.sr:
        return 'Serbian';
      case Languages.uz:
        return 'Uzbek';
      case Languages.kk:
        return 'Kazakh';
      case Languages.sq:
        return 'Albanian';
      case Languages.cs:
        return 'Czech';
      case Languages.pl:
        return 'Polish';
      case Languages.hr:
        return 'Croatian';
      case Languages.sk:
        return 'Slovak';
      case Languages.lt:
        return 'Lithuanian';
      case Languages.lv:
        return 'Latvian';
      case Languages.et:
        return 'Estonian';
      case Languages.sl:
        return 'Slovenian';
      case Languages.az:
        return 'Azerbaijani';
      case Languages.ka:
        return 'Georgian';
      case Languages.id:
        return 'Indonesian';
      case Languages.th:
        return 'Thai';
      case Languages.hi:
        return 'Hindi';
      case Languages.tl:
        return 'Filipino';
    }
    return '';
  }
}