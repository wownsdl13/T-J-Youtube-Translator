import 'package:freezed_annotation/freezed_annotation.dart';

part 'translate_repository_state.freezed.dart';

@Freezed()
class TranslateRepositoryState with _$TranslateRepositoryState {
  const factory TranslateRepositoryState({
    @Default('https://api.openai.com/v1/chat/completions') String chatGPTUrl
}) = _TranslateRepositoryState;
}