import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:youtube_translation/models/one_translate_model.dart';
import 'package:youtube_translation/services/dto/chat_gpt/gpt_response.dart';
import 'package:youtube_translation/utils/key_storage.dart';

class TranslateHttps {
  static const _chatGPTUrl = 'https://api.openai.com/v1/chat/completions';

  static Future<Map<String, String>> translateTxt(String srtTxt) async {
    print('start > $srtTxt');
    if (RegExp(r'^[!.? ]*$').hasMatch(srtTxt)) {
      print('here!');
      return {
        OneTranslateModel.original: srtTxt,
        OneTranslateModel.ko: srtTxt,
        OneTranslateModel.en: srtTxt,
        OneTranslateModel.ja: srtTxt,
        OneTranslateModel.fr: srtTxt,
        OneTranslateModel.zh: srtTxt,
        OneTranslateModel.es: srtTxt,
      };
    }
    var tryTime = 0;
    while (tryTime < 5) {
      print('start!');
      try {
        var result = await http.post(Uri.parse(_chatGPTUrl),
            headers: {
              'Content-type': 'application/json; charset=utf-8',
              'Authorization':
                  'Bearer ${await KeyStorage.getKey(KeyStorage.chatGptKey)}'
            },
            body: jsonEncode({
              'model': 'gpt-4',
              "messages": [
                {
                  "role": "user",
                  "content": """
          translate text following these rules. translate language is ko, en, ja, fr, zh, es and form is {"ko":..., ...}. keep original if it's same language. Speak informally, and Respond just only json. there's no meaning of ... so just ignore it. Maintain the line breaks:
          $srtTxt
          """
                }
              ],
              "temperature": 0,
              'max_tokens': 2000
            }));
        print('result > ${result.body}');
        tryTime++;
        var gpt =
            GptResponse.fromJson(jsonDecode(utf8.decode(result.bodyBytes)));
        print('return...');
        return (jsonDecode(gpt.text) as Map)
            .map((key, value) => MapEntry(key.toString(), value.toString()))
          ..[OneTranslateModel.original] = srtTxt;
      } catch (e) {
        print(e);
      }
    }
    return {};
  }
}
