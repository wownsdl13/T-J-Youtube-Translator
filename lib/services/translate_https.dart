import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:youtube_translation/models/one_translate_model.dart';
import 'package:youtube_translation/services/dto/chat_gpt/gpt_response.dart';
import 'package:youtube_translation/utils/key_storage.dart';

class TranslateHttps {
  static const _chatGPTUrl = 'https://api.openai.com/v1/chat/completions';

  static Future<Map<String, String>> translateTxt(String srtTxt) async {
    var result = await http.post(Uri.parse(_chatGPTUrl),
        headers: {
          'Content-type': 'application/json; charset=utf-8',
          'Authorization': 'Bearer ${await KeyStorage.getChatGptKey}'
        },
        body: jsonEncode({
          'model': 'gpt-4',
          "messages": [
            {
              "role": "user",
              "content": """
          translate text. Maintain the line breaks:
          $srtTxt
          
          ko, en, ja, fr, zh, es
          {"ko":..., ...}
          Speak informally.
          Respond only json
          """
            }
          ],
          "temperature": 0,
          'max_tokens': 2000
        }));
    var gpt = GptResponse.fromJson(jsonDecode(utf8.decode(result.bodyBytes)));
    return (jsonDecode(gpt.text) as Map).map((key, value) => MapEntry(key.toString(), value.toString()))..[OneTranslateModel.original] = srtTxt;
  }
}
