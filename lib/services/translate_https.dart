import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:youtube_translation/models/one_srt_model.dart';
import 'package:youtube_translation/models/one_translate_model.dart';
import 'package:youtube_translation/services/dto/chat_gpt/gpt_response.dart';
import 'package:youtube_translation/utils/key_storage.dart';

typedef TranslateCallback = Function(
    OneSrtModel srtModel, Map<String, String> translatedText);

class TranslateHttps {
  static const _chatGPTUrl = 'https://api.openai.com/v1/chat/completions';

  static Future<Map<String, String>> translateTxt(String srtTxt) async {
    if (RegExp(r'^[!.? ]*$').hasMatch(srtTxt)) {
      return OneTranslateModel.langList.fold<Map<String, String>>({},
          (previousValue, lang) {
        previousValue[lang] = srtTxt;
        return previousValue;
      })
        ..[OneTranslateModel.original] = srtTxt;
    }
    while (true) {
      try {
        var result = await http
            .post(Uri.parse(_chatGPTUrl),
                headers: {
                  'Content-type': 'application/json; charset=utf-8',
                  'Authorization':
                      'Bearer ${await KeyStorage.getKey(KeyStorage.chatGptKey)}'
                },
                body: jsonEncode({
                  'model': 'gpt-3.5-turbo-1106',
                  "messages": [
                    {
                      "role": "user",
                      "content": """
          translate text following these rules : translate languages are ${OneTranslateModel.langList.join(', ')}. form is {"ko":..., ...}. keep original if it's same language. Speak informally, Maintain the line breaks. Respond only json:
          $srtTxt
          """
                    }
                  ],
                  "temperature": 0,
                  'max_tokens': 4096
                }))
            .timeout(const Duration(seconds: 620));
        await Future.delayed(const Duration(seconds: 2));
        if (result.statusCode == 200) {
          var gpt =
              GptResponse.fromJson(jsonDecode(utf8.decode(result.bodyBytes)));
          var map = (jsonDecode(gpt.text) as Map)
              .map((key, value) => MapEntry(key.toString(), value.toString()))
            ..[OneTranslateModel.original] = srtTxt;
          var hasAll = true;
          for(var lang in OneTranslateModel.langList){
            if(!map.containsKey(lang)){
              hasAll = false;
              break;
            }
          }
          if(!hasAll){
            print('continue!!');
            continue;
          }
          return map;
        } else {
          print('not 200! > ${result.body}');
        }
      } catch (e) {
        print(e);
      }
    }
  }

  static Future<void> translateTxtList(
      List<OneSrtModel> srtList, TranslateCallback callback) async {
    // 동시 실행할 수 있는 최대 작업 수입니다.
    const maxConcurrentTasks = 1;

    // 동시에 처리할 수 있는 작업 수를 제어하는 카운터.
    var runningTasks = 0;

    // 대기 중인 작업의 컴플리터를 보관하는 큐.
    var pendingTaskCompleter = <Completer>[];

    // 작업을 완료하는 함수.
    void onTaskComplete() {
      runningTasks--;
      if (pendingTaskCompleter.isNotEmpty) {
        var completer = pendingTaskCompleter.removeAt(0);
        completer.complete();
      }
    }

    for (var txt in srtList) {
      // 현재 실행 중인 작업 수가 제한에 도달했는지 확인합니다.
      if (runningTasks >= maxConcurrentTasks) {
        // 작업이 완료될 때까지 기다립니다.
        var completer = Completer();
        pendingTaskCompleter.add(completer);
        await completer.future;
      }

      runningTasks++;

      // 새 작업을 시작하고 완료되면 onTaskComplete 함수를 호출합니다.
      translateTxt(txt.text).then((translatedText) {
        callback(txt, translatedText);
        onTaskComplete();
      });
    }

    // 모든 작업이 완료될 때까지 대기합니다.
    while (runningTasks > 0) {
      var completer = Completer();
      pendingTaskCompleter.add(completer);
      await completer.future;
    }
  }
}
