import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_tags_dto.freezed.dart';

part 'update_tags_dto.g.dart';

@Freezed()
class UpdateTagsDto with _$UpdateTagsDto {
  const factory UpdateTagsDto({
    required List<String> tags
}) = _UpdateTagsDto;

  factory UpdateTagsDto.fromJson(Map<String, Object?> json) =>
      _$UpdateTagsDtoFromJson(json);
}