import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:youtube_translation/services/dto/chat_gpt/gpt_response.dart';
import 'package:youtube_translation/services/dto/chat_gpt/translate_dto.dart';
import 'package:youtube_translation/utils/chat_gpt_key.dart';

class TranslateHttps {
  static const _chatGPTUrl = 'https://api.openai.com/v1/chat/completions';

  static Future<TranslateDto> translateSrt(String srtTxt) async {

    var result = await http.post(Uri.parse(_chatGPTUrl),
        headers: {
          'Content-type': 'application/json; charset=utf-8',
          'Authorization': 'Bearer ${await ChatGPTKey.getKey}'
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
    return TranslateDto.fromString(gpt.text);
  }

  static Future<String> translateTxt(String srtTxt) async {
    var result = await http.post(Uri.parse(_chatGPTUrl),
        headers: {
          'Content-type': 'application/json; charset=utf-8',
          'Authorization': 'Bearer ${await ChatGPTKey.getKey}'
        },
        body: jsonEncode({
          'model': 'gpt-4',
          "messages": [
            {
              "role": "user",
              "content": """
          $srtTxt
          
          translate upper text en to ko or opposite.
          Respond translated text.
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
