import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_comment_dto.freezed.dart';

part 'post_comment_dto.g.dart';

@Freezed()
class PostCommentDto with _$PostCommentDto {
  const factory PostCommentDto({
    required String oAuthToken,
    required String videoId, required String text}) = _PostCommentDto;

  factory PostCommentDto.fromJson(Map<String, Object?> json) =>
      _$PostCommentDtoFromJson(json);
}