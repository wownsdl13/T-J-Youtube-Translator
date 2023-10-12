import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:youtube_translation/services/dto/chat_gpt/gpt_response.dart';

class TranslateHttps {
  static const _chatGPTUrl = 'https://api.openai.com/v1/chat/completions';
  static const _apiKey = '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';

  static Future translate(String srtTxt) async {
    var result = await http.post(Uri.parse(_chatGPTUrl),
        headers: {
          'Content-type': 'application/json; charset=utf-8',
          'Authorization': 'Bearer $_apiKey'
        },
        body: jsonEncode({
          'model': 'gpt-4',
          "messages": [
            {
              "role": "user",
              "content": """
          $srtTxt
          
          translate en to ko or opposite.
          {"ko":..., "en":...}
          Speak informally.
          Respond json
          """
            }
          ],
          "temperature": 0,
          'max_tokens': 500
        }));
    var gpt = GptResponse.fromJson(jsonDecode(utf8.decode(result.bodyBytes)));
    return gpt.text;
  }
}
