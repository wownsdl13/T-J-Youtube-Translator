import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:youtube_translation/models/one_translate/one_translate.dart';

part 'translate.freezed.dart';

@Freezed()
class Translate with _$Translate {
  const factory Translate({
    required String pk,
    required int createTime,
    required List<OneTranslate> translates,
}) = _Translate;

  const Translate._();

  factory Translate.create() => Translate(pk: const Uuid().v1(), createTime: DateTime.now().millisecondsSinceEpoch, translates: []);
}