import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_subtitle_send_dto.freezed.dart';

part 'delete_subtitle_send_dto.g.dart';

@Freezed()
class DeleteSubtitleSendDto with _$DeleteSubtitleSendDto {
  const factory DeleteSubtitleSendDto({
    required String pk
}) = _DeleteSubtitleSendDto;

  factory DeleteSubtitleSendDto.fromJson(Map<String, Object?> json) =>
      _$DeleteSubtitleSendDtoFromJson(json);
}