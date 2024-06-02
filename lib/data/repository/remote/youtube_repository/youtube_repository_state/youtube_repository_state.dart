import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_translation/data/client/remote/youtube_client/youtube_client.dart';

part 'youtube_repository_state.freezed.dart';

@Freezed()
class YoutubeRepositoryState with _$YoutubeRepositoryState {
  const factory YoutubeRepositoryState({
    required YoutubeClient youtubeClient
}) = _YoutubeRepositoryState;
}