class LangTextModel{
  String _original = '';
  String get original => _original;
  set setOriginal(String text) => _original = text;

  String? _translate;
  bool get hasTranslate => _translate != null;
  String get translate => _translate!;
  set setTranslate(String text) => _translate = text;
}