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

  static List<String> get captionsLangList => [
    ko, // 한국어
    en, // 영어
    ja, // 일본어
    fr, // 프랑스어
    zh, // 중국어
    es, // 스페인어
    vi, // 베트남어
    ar, // 아랍어
    nl, // 네덜란드어
    it, // 이탈리아어
    de, // 독일어
    ru, // 러시아어
    pt, // 포르투갈어
    tr, // 터키어
    hi, // 힌디어
    th, // 태국어
    id  // 인도네시아어
  ];
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

  static String getSubtitleSupportMessage(String languageCode) {
    if(!captionsLangList.contains(languageCode)){
      return '';
    }
    switch (languageCode) {
      case Languages.ko:
        return '이 영상은 한국어 자막을 지원합니다';
      case Languages.en:
        return 'This video supports English subtitles';
      case Languages.ja:
        return 'この動画には日本語の字幕があります';
      case Languages.fr:
        return 'Cette vidéo propose des sous-titres en français';
      case Languages.zh:
        return '本视频提供中文字幕';
      case Languages.es:
        return 'Este video tiene subtítulos en español';
      case Languages.vi:
        return 'Video này có phụ đề tiếng Việt';
      case Languages.ar:
        return 'هذا الفيديو يدعم الترجمة العربية';
      case Languages.nl:
        return 'Deze video heeft Nederlandse ondertitels';
      case Languages.de:
        return 'Dieses Video unterstützt deutsche Untertitel';
      case Languages.ms:
        return 'Video ini menyokong sari kata dalam Bahasa Melayu';
      case Languages.ru:
        return 'Это видео поддерживает русские субтитры';
      case Languages.uk:
        return 'Це відео має українські субтитри';
      case Languages.it:
        return 'Questo video ha sottotitoli in italiano';
      case Languages.pt:
        return 'Este vídeo tem legendas em português';
      case Languages.tr:
        return 'Bu video Türkçe altyazı destekliyor';
      case Languages.hu:
        return 'Ez a videó magyar feliratot tartalmaz';
      case Languages.el:
        return 'Αυτό το βίντεο διαθέτει ελληνικούς υπότιτλους';
      case Languages.sv:
        return 'Denna video har svenska undertexter';
      case Languages.no:
        return 'Denne videoen har norske undertekster';
      case Languages.fi:
        return 'Tässä videossa on suomenkielinen tekstitys';
      case Languages.be:
        return 'Гэта відэа мае беларускія субтытры';
      case Languages.ro:
        return 'Acest videoclip are subtitrări în limba română';
      case Languages.bg:
        return 'Това видео има български субтитри';
      case Languages.sr:
        return 'Ovaj video ima srpske titlove';
      case Languages.uz:
        return 'Ushbu video oʻzbekcha subtitrlarni oʻz ichiga oladi';
      case Languages.kk:
        return 'Бұл бейнеде қазақша субтитрлер бар';
      case Languages.sq:
        return 'Ky video ka përkthime në shqip';
      case Languages.cs:
        return 'Toto video má české titulky';
      case Languages.pl:
        return 'Ten film ma polskie napisy';
      case Languages.hr:
        return 'Ovaj video ima hrvatske titlove';
      case Languages.sk:
        return 'Toto video má slovenské titulky';
      case Languages.lt:
        return 'Šis vaizdo įrašas turi lietuviškus subtitrus';
      case Languages.lv:
        return 'Šim videoklipam ir latviešu subtitri';
      case Languages.et:
        return 'Sellel videol on eesti subtiitrid';
      case Languages.sl:
        return 'Ta video ima slovenske podnapise';
      case Languages.az:
        return 'Bu videoda Azərbaycan dilində subtitrlər var';
      case Languages.ka:
        return 'ამ ვიდეოს აქვს ქართული სუბტიტრები';
      case Languages.id:
        return 'Video ini memiliki subtitle Bahasa Indonesia';
      case Languages.th:
        return 'วิดีโอนี้มีคำบรรยายภาษาไทย';
      case Languages.hi:
        return 'इस वीडियो में हिंदी उपशीर्षक उपलब्ध हैं';
      case Languages.tl:
        return 'Ang video na ito ay may mga subtitle sa Filipino';
      default:
        return 'This video supports subtitles in multiple languages';
    }
  }
}