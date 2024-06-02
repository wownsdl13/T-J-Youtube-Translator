import 'package:freezed_annotation/freezed_annotation.dart';

part 'one_srt.freezed.dart';

@Freezed()
class OneSrt with _$OneSrt{
  const factory OneSrt({
    required int order,
    required String text,
    required String period,
}) = _OneSrt;
}