import 'package:freezed_annotation/freezed_annotation.dart';
part 'translator_loading_state.freezed.dart';

@Freezed()
class TranslatorLoadingState with _$TranslatorLoadingState {
  const factory TranslatorLoadingState({
    @Default(false) bool translatingTitle,
    @Default(false) bool translatingDescription,
    @Default(false) bool readingSrt,
    @Default(false) bool gettingAudio,
    int? loadingPercentage
}) = _TranslatorLoadingState;
}