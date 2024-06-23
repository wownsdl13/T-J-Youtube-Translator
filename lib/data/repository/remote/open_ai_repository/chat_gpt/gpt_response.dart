
import 'package:youtube_translation/data/repository/remote/open_ai_repository/chat_gpt/inner_dto/choice.dart';
import 'package:youtube_translation/data/repository/remote/open_ai_repository/chat_gpt/inner_dto/usage.dart';

class GptResponse {

  GptResponse({
    required this.id,
    required this.object,
    required this.created,
    required this.model,
    required this.choices,
    required this.usage,
  });

  final String id;
  final String object;
  final int created;
  final String model;
  final List<Choice> choices;
  final Usage usage;

  String get text => choices.first.message.content;

  factory GptResponse.fromJson(Map<String, dynamic> json) {
    return GptResponse(
      id: json['id'],
      object: json['object'],
      created: json['created'],
      model: json['model'],
      choices: (json['choices'] as List).map((e) => Choice.fromJson(e)).toList(),
      usage: Usage.fromJson(json['usage']),
    );
  }
}
