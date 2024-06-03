import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:youtube_translation/data/repository/remote/translate_repository/chat_gpt/gpt_response.dart';
import 'package:youtube_translation/data/repository/remote/translate_repository/translate_repository_state/translate_repository_state.dart';
import 'package:youtube_translation/models/subtitle/one_srt/one_srt.dart';
import 'package:youtube_translation/models/one_translate/one_translate.dart';
import 'package:youtube_translation/utils/languages.dart';

part 'translate_repository.g.dart';

typedef TranslateCallback = Function(
    OneTranslate item, Map<String, String> translatedText);

@Riverpod()
class TranslateRepository extends _$TranslateRepository {
  @override
  TranslateRepositoryState build() {
    return const TranslateRepositoryState();
  }

  Future<String> translateToLanguages(
      String text, String targetLanguageCode,
      {required String openAiApiKey}) async {
    final dio = Dio();
    while (true) {
      try {
        var result = await dio
            .post(
              state.chatGPTUrl,
              options: Options(
                headers: {
                  'Content-type': 'application/json; charset=utf-8',
                  'Authorization': 'Bearer $openAiApiKey',
                },
              ),
              data: jsonEncode({
                'model': 'gpt-4o',
                'messages': [
                  {
                    'role': 'user',
                    'content': """{
"Translate this text": {"text":"$text"},
"Target language": $targetLanguageCode,
"Format": “json: {"text":"translatedText"}”
"Conditions": ["Keep it friendly, considering it's for a YouTube title, description", "Don't forget to use proper spacing", "If the sentence is incorrect, please correct it", "Keep original if language is same with original", "it's really important. you must fill in everything. don't miss it"]
}
                """,
                  }
                ],
                'temperature': 0,
                'max_tokens': 4096,
                'response_format': {'type': 'json_object'}
              }),
            )
            .timeout(const Duration(seconds: 620));
        if (result.statusCode == 200) {
          var gpt = GptResponse.fromJson(result.data);
          var map = (jsonDecode(gpt.text) as Map)
              .map((key, value) => MapEntry(key.toString(), value.toString()));
          return map['text']!;
        } else {
          print('Response not 200: ${result.data}');
        }
      } catch (e) {
        print('Error: $e');
      }
    }
  }

  Future<List<OneTranslate>> translateToTargetLang(
      List<OneTranslate> originalTranslateList,
      {required String fromLanguageCode,
      required String toLanguageCode,
      required String openAiApiKey}) async {
    final textList = originalTranslateList
        .map((item) => item.getLang(fromLanguageCode))
        .toList();
    final translatedTextMap = await _translateToTargetBatch(textList,
        languageCode: toLanguageCode, openAiApiKey: openAiApiKey);
    var translateList = <OneTranslate>[];
    for (var index = 0; index < originalTranslateList.length; index++) {
      var oneTranslate = originalTranslateList[index];
      var t = Map<String, String>.from(oneTranslate.translations);
      t[toLanguageCode] = translatedTextMap[index] ?? '';
      var newOne = oneTranslate.copyWith(translations: t);
      translateList.add(newOne);
    }
    return translateList;
  }

  Future<Map<int, String>> _translateToTargetBatch(List<String> texts,
      {required String languageCode, required String openAiApiKey}) async {
    final dio = Dio();
    try {
      var language = Languages.langName(languageCode);
      var textMap = <String, String>{};
      for (var index = 0; index < texts.length; index++) {
        textMap[index.toString()] = texts[index];
      }
      var result = await dio
          .post(
            state.chatGPTUrl,
            options: Options(
              headers: {
                'Content-type': 'application/json; charset=utf-8',
                'Authorization': 'Bearer $openAiApiKey',
              },
            ),
            data: jsonEncode({
              'model': 'gpt-4o',
              'messages': [
                {
                  'role': 'user',
                  'content': """{
"Translate the following texts (original) to $language": "${jsonEncode(textMap)}",
"Format": "json: { 0: "translated", 1: "translated", ... }"
"Conditions": ["Make the translations natural and fluent", "It's subtitles so consider about whole context when you translate it", "When translating, do not attach periods and commas at the end of the result", "Just keep the original if translated language is same", "YOU MUST TRANSLATE ALL. Check yourself and if there's blank, then fill it"]
                }""",
                }
              ],
              'temperature': 0,
              'max_tokens': 4096,
              'response_format': {'type': 'json_object'}
            }),
          )
          .timeout(const Duration(seconds: 620));

      if (result.statusCode == 200) {
        var gpt = GptResponse.fromJson(result.data);
        var map = (jsonDecode(gpt.text) as Map)
            .map((key, value) => MapEntry(int.parse(key), value.toString()));
        print('result : ${map}');
        return map;
      } else {
        print('Response not 200: ${result.data}');
      }
    } catch (e) {
      print('Error: $e');
    }
    return {};
  }

  Future _processList<T>(
      List<T> itemList,
      String Function(T) getText,
      void Function(T, Map<String, String>) setText,
      Future<Map<String, String>> Function(String,
              {required String openAiApiKey})
          translateFunction,
      {required String openAiApiKey}) async {
    const maxConcurrentTasks = 10;
    var runningTasks = 0;
    var pendingTaskCompleter = <Completer>[];

    void onTaskComplete() {
      runningTasks--;
      if (pendingTaskCompleter.isNotEmpty) {
        var completer = pendingTaskCompleter.removeAt(0);
        completer.complete();
      }
    }

    for (var item in itemList) {
      if (runningTasks >= maxConcurrentTasks) {
        var completer = Completer();
        pendingTaskCompleter.add(completer);
        await completer.future;
      }

      runningTasks++;

      translateFunction(getText(item), openAiApiKey: openAiApiKey)
          .then((translatedText) {
        setText(item, translatedText);
        onTaskComplete();
      });
    }

    while (runningTasks > 0) {
      var completer = Completer();
      pendingTaskCompleter.add(completer);
      await completer.future;
    }
  }
}
