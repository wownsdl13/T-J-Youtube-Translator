import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_translation/models/subtitle/one_srt/one_srt.dart';

part 'subtitle.freezed.dart';

@Freezed()
class Subtitle with _$Subtitle {
  const factory Subtitle({
    required String title,
    required List<OneSrt> srtList,
}) = _Subtitle;
}