import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_translation/data/client/remote/subtitle_client/dto/get_subtitle_receive_dto/sutitle_dto/subtitle_dto.dart';
import 'package:youtube_translation/models/translate/translate.dart';

part 'get_subtitle_receive_dto.freezed.dart';
part 'get_subtitle_receive_dto.g.dart';

@Freezed()
class GetSubtitleReceiveDto with _$GetSubtitleReceiveDto {
  const factory GetSubtitleReceiveDto({
    required String pk,
    @JsonKey(fromJson: _fromJsonTimestamp, toJson: _toJsonTimestamp) required DateTime createTime,
    required List<SubtitleDto> subtitles,
}) = _GetSubtitleReceiveDto;
  const GetSubtitleReceiveDto._();
  factory GetSubtitleReceiveDto.fromJson(Map<String, Object?> json) =>
      _$GetSubtitleReceiveDtoFromJson(json);

  Translate toTranslate() {
    return Translate(
      pk: pk,
      createTime: createTime.millisecondsSinceEpoch,
      translates: subtitles.map((subtitleOne) => subtitleOne.toOneTranslate()).toList(),
    );
  }
}

DateTime _fromJsonTimestamp(String timestamp) =>
    DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp));

int _toJsonTimestamp(DateTime dateTime) =>
    dateTime.millisecondsSinceEpoch;
