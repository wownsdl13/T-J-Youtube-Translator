import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_translation/utils/loading_text.dart';

part 'util_state.freezed.dart';

@Freezed()
class UtilState with _$UtilState{
  const factory UtilState({
    LoadingText? loading,
}) = _UtilState;
}