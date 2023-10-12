import 'dart:convert';

class TranslateDto{
  TranslateDto(this._lang);
  final Map<String, String> _lang;

  String get en => _lang['en']!;
  String get ko => _lang['ko']!;

  factory TranslateDto.fromString(String text){
    return TranslateDto((jsonDecode(text) as Map).map((key, value) => MapEntry(key.toString(), value.toString())));
  }

}