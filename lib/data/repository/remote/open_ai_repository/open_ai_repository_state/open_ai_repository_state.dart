import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_translation/data/client/remote/open_ai_client/open_ai_client.dart';
import 'package:youtube_translation/data/repository/remote/open_ai_repository/chat_gpt/gpt_response.dart';
import 'package:youtube_translation/models/one_translate/one_translate.dart';
import 'package:youtube_translation/utils/languages.dart';
import 'dart:html' as html;

part 'open_ai_repository_state.freezed.dart';

@Freezed()
class OpenAiRepositoryState with _$OpenAiRepositoryState {
  const factory OpenAiRepositoryState({
    required OpenAiClient client,
  }) = _OpenAiRepositoryState;

  const OpenAiRepositoryState._();

  Future<String> transcribeAudio(Uint8List data,
      {required String openAiApiKey}) async {
    final formData = FormData.fromMap({
      'file': MultipartFile.fromBytes(data, filename: 'audio.mp3'),
      'response_format': 'srt',
      'model': 'whisper-1',
      // 'language': 'en', // 번역 작업 지정
    });

    try {
      var response = await Dio().post(
        '${OpenAiClient.baseUrl}audio/translations',
        data: formData,
        options: Options(
          headers: {
            'Authorization': 'Bearer $openAiApiKey',
          },
        ),
      );
      if (response.statusCode == 200) {
        final transcription = response.data;
        return transcription;
      } else {
        //
        print('Error: ${response.statusCode} - ${response.statusMessage}');
      }
    } catch (e) {
      print('error > $e');
    }
    throw Exception();
  }

  Future<String> translateToLanguages(String text, String targetLanguageCode,
      {required String openAiApiKey}) async {
    final response = await client.translateText(
      'Bearer $openAiApiKey',
      'application/json; charset=utf-8',
      {
        'model': 'gpt-4o',
        'messages': [
          {
            'role': 'user',
            'content': """{
              "Translate this text": $text,
              "Target language": $targetLanguageCode,
              "Format": "json: {"text":"translatedText"}",
              "Conditions": ["Keep it friendly, considering it's for a YouTube title, description", "Don't forget to use proper spacing", "If the sentence is incorrect, please correct it", "Keep original if language is same with original", "it's really important. you must fill in everything. don't miss it"]
            }""",
          }
        ],
        'temperature': 0,
        'max_tokens': 4096,
        'response_format': {'type': 'json_object'}
      },
    ).timeout(const Duration(seconds: 620));

    if (response.response.statusCode == 200) {
      var gpt = GptResponse.fromJson(response.data);
      var t = jsonDecode(gpt.text);
      return t['text'];
    } else {
      print(
          'Error: ${response.response.statusCode} - ${response.response.statusMessage}');
    }
    throw Exception();
  }

  Future<List<OneTranslate>> translateToTargetLang(
      List<OneTranslate> originalTranslateList,
      {required String fromLanguageCode,
      required String toLanguageCode,
      required String openAiApiKey,
      required bool strictTextRole}) async {
    final textList = originalTranslateList
        .map((item) => item.getLang(fromLanguageCode))
        .toList();

    var translateList = <OneTranslate>[];
    int batchSize = 100;
    int contextSize = 20;

    for (var i = 0; i < textList.length; i += batchSize) {
      var contextStartIndex = (i >= contextSize) ? i - contextSize : 0;
      var contextList = textList.sublist(contextStartIndex, i);
      var batchEndIndex =
          (i + batchSize > textList.length) ? textList.length : i + batchSize;
      var batchList =
          textList.sublist(i, batchEndIndex); // index 0 - 99, 100 - 199 ...

      // 문맥 포함 번역 요청
      var translatedTextMap = await _translateToTargetBatch(
          contextList, batchList,
          languageCode: toLanguageCode,
          openAiApiKey: openAiApiKey,
          strictTextRole: strictTextRole);

      // 원래 100개의 번역만 추출
      for (var index = 0;
          index < batchSize && (i + index) < originalTranslateList.length;
          index++) {
        var oneTranslate = originalTranslateList[i + index];
        var t = Map<String, String>.from(oneTranslate.translations);
        t[toLanguageCode] = translatedTextMap[index] ?? '';
        var newOne = oneTranslate.copyWith(translations: t);
        translateList.add(newOne);
      }
    }
    return translateList;
  }

  Future<Map<int, String>> _translateToTargetBatch(
      List<String> contextList, List<String> batchList,
      {required String languageCode,
      required String openAiApiKey,
      required bool strictTextRole}) async {
    var language = Languages.langName(languageCode);

    var textMap = <String, String>{};
    for (var index = 0; index < batchList.length; index++) {
      textMap[index.toString()] = batchList[index];
    }

    var contextText = contextList.join('\n');

    String strict = '';
    if (strictTextRole) {
      strict =
          'Keep in mind that I want the translation to stay within the given text';
    }

    final response = await client.translateText(
      'Bearer $openAiApiKey',
      'application/json; charset=utf-8',
      {
        'model': 'gpt-4o',
        'messages': [
          {
            'role': 'user',
            'content': """{
            "Translate the following texts (original) to $language": "${jsonEncode(textMap)}",
            "Previous context": "$contextText",
            "Format": "json: { 0: "translated", 1: "translated", ... }",
            "Conditions": ["Make the translations natural and fluent", "It's subtitles, so consider the whole context when translating. $strict", "When translating, do not attach periods and commas at the end of the result"]
          }""",
          }
        ],
        'temperature': 0,
        'max_tokens': 4096,
        'response_format': {'type': 'json_object'}
      },
    ).timeout(const Duration(seconds: 620));

    late String gptText;
    try {
      if (response.response.statusCode == 200) {
        var gpt = GptResponse.fromJson(response.data);
        gptText = gpt.text;
        var map = (jsonDecode(gpt.text) as Map)
            .map((key, value) => MapEntry(int.parse(key), value.toString()));
        return map;
      } else {
        print(
            'Error: ${response.response.statusCode} - ${response.response.statusMessage}');
      }
    } catch (e) {
      _downloadData(utf8.encode(gptText), name: 'error log');
      print('why? > ${e}');
    }

    throw Exception();
  }

  void _downloadData(Uint8List data, {required String name}) {
    // Encode our file in base64
    final base64 = base64Encode(data);
    final anchor =
        html.AnchorElement(href: 'data:application/octet-stream;base64,$base64')
          ..target = 'blank';
    // add the name
    anchor.download = name;
    // trigger download
    html.document.body?.append(anchor);
    anchor.click();
    anchor.remove();
  }
}
