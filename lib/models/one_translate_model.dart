class OneTranslateModel {
  OneTranslateModel({
    required this.period,
    String? korean,
    String? english,
  })  : _korean = korean,
        _english = english;

  final String period;
  String? _korean;

  String? get korean {
    if (_korean == null) {
      return _korean;
    }
    if (quotes) {
      return '"$_korean"';
    }
    if (bracket) {
      return '($_korean)';
    }
    return _korean;
  }

  set setKorean(String korean) => _korean = korean;

  String? _english;

  String? get english {
    if (_english == null) {
      return _english;
    }
    if (quotes) {
      return '"$_english"';
    }
    if (bracket) {
      return '($_english)';
    }
    return _english;
  }

  set setEnglish(String english) => _english = english;

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
