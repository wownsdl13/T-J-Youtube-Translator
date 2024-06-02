import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_refresh_token_dto.freezed.dart';

part 'get_refresh_token_dto.g.dart';

@Freezed()
class GetRefreshTokenDto with _$GetRefreshTokenDto {
  const factory GetRefreshTokenDto({
    required String accessToken
}) = _GetRefreshTokenDto;

  factory GetRefreshTokenDto.fromJson(Map<String, Object?> json) =>
      _$GetRefreshTokenDtoFromJson(json);
}