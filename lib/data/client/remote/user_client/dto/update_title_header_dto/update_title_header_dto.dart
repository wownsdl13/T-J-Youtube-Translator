import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_title_header_dto.freezed.dart';

part 'update_title_header_dto.g.dart';

@Freezed()
class UpdateTitleHeaderDto with _$UpdateTitleHeaderDto {
  const factory UpdateTitleHeaderDto({required String txt}) = _UpdateTitleHeaderDto;

  factory UpdateTitleHeaderDto.fromJson(Map<String, Object?> json) =>
      _$UpdateTitleHeaderDtoFromJson(json);
}