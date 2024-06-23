import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_translation/data/client/remote/open_ai_client/open_ai_client.dart';
import 'package:youtube_translation/data/repository/remote/open_ai_repository/chat_gpt/gpt_response.dart';
import 'package:youtube_translation/models/one_translate/one_translate.dart';
import 'package:youtube_translation/utils/languages.dart';

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
      'model':'whisper-1'
    });

    try {
      var response = await Dio().post(
        '${OpenAiClient.baseUrl}audio/transcriptions',
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
        print('Error: ${response.statusCode} - ${response.statusMessage}');
      }
    }catch(e){
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
              "Translate this text": {"text":"$text"},
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
      return response.data;
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
    var language = Languages.langName(languageCode);
    var textMap = <String, String>{};
    for (var index = 0; index < texts.length; index++) {
      textMap[index.toString()] = texts[index];
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
              "Format": "json: { 0: "translated", 1: "translated", ... }",
              "Conditions": ["Make the translations natural and fluent", "It's subtitles so consider about whole context when you translate it", "When translating, do not attach periods and commas at the end of the result", "Just keep the original if translated language is same", "YOU MUST TRANSLATE ALL. Check yourself and if there's blank, then fill it"]
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
      var map = (jsonDecode(gpt.text) as Map)
          .map((key, value) => MapEntry(int.parse(key), value.toString()));
      return map;
    } else {
      print(
          'Error: ${response.response.statusCode} - ${response.response.statusMessage}');
    }
    throw Exception();
  }
}
