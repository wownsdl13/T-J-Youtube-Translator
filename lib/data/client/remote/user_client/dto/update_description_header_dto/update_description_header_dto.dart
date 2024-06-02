import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_description_header_dto.freezed.dart';

part 'update_description_header_dto.g.dart';

@Freezed()
class  UpdateDescriptionHeaderDto with _$UpdateDescriptionHeaderDto {
  const factory UpdateDescriptionHeaderDto({required String txt}) = _UpdateDescriptionHeaderDto;

  factory UpdateDescriptionHeaderDto.fromJson(Map<String, Object?> json) =>
      _$UpdateDescriptionHeaderDtoFromJson(json);
}