import 'package:freezed_annotation/freezed_annotation.dart';

part 'open_ai_repository_state.freezed.dart';

@Freezed()
class OpenAiRepositoryState with _$OpenAiRepositoryState {
  const factory OpenAiRepositoryState() = _OpenAiRepositoryState;
}