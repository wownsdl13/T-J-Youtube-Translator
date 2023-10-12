class OneTranslateModel {
  OneTranslateModel({
    required this.order,
    required this.period,
    required String korean,
    required String english,
  })  : _korean = korean,
        _english = english;

  final int order;
  final String period;
  final String _korean;

  String get korean {
    if (quotes) {
      return '"$_korean"';
    }
    if (bracket) {
      return '($_korean)';
    }
    return _korean;
  }

  final String _english;

  String get english {
    if (quotes) {
      return '"$_english"';
    }
    if (bracket) {
      return '($_english)';
    }
    return _english;
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
