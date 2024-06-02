import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_percentage.freezed.dart';

@Freezed()
class UploadPercentage with _$UploadPercentage {
  const factory UploadPercentage(
      {@Default(0) int percentage,
      @Default('') String text}) = _UploadPercentage;
}
