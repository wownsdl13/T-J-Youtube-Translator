import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_translation/models/one_translate/enum/subtitle_one_type.dart';
import 'package:youtube_translation/models/one_translate/one_translate.dart';
import 'package:youtube_translation/provider/screen_provider/screen_provider.dart';
import 'package:youtube_translation/screens/translator_screen/translator_provider/translator_provider.dart';
import 'package:youtube_translation/utils/languages.dart';

class OneTranslateItem extends ConsumerStatefulWidget {
  const OneTranslateItem(
      {Key? key, required this.oneTranslate, required this.translatedText})
      : super(key: key);
  final OneTranslate oneTranslate;
  final String translatedText;

  @override
  ConsumerState<OneTranslateItem> createState() => _OneTranslateItemState();
}

class _OneTranslateItemState extends ConsumerState<OneTranslateItem> {
  final textEditingController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    textEditingController.text = widget.translatedText;
    textEditingController.addListener((){
      var t = ref.read(translatorProvider.notifier);
      t.setLang(widget.oneTranslate,
          languageCode: ref.read(screenProvider).languageCode,
          text: textEditingController.text);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var ts = ref.watch(translatorProvider);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 3),
          child: Row(
            children: [
              Container(
                  constraints: const BoxConstraints(
                    minWidth: 50,
                  ),
                  child: Text(
                    widget.oneTranslate.order.toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                  )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 12, 5, 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.oneTranslate.period,
                      style:
                          TextStyle(color: Colors.grey.shade700, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      widget.oneTranslate.getLang(Languages.original),
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    const SizedBox(height: 5),
                    TextField(
                      controller: textEditingController,
                      maxLines: null,
                      cursorColor: Colors.grey.shade400,
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                      decoration: InputDecoration(
                        hintText: 'Empty',
                          hintStyle: TextStyle(color: Colors.grey.shade600),
                          isDense: true, border: InputBorder.none),
                    ),
                  ],
                ),
              )),
              Container(
                width: 1,
                color: Colors.white,
              ),
              selectOneTranslateWidget
            ],
          ),
        ),
        const Divider(height: 1, thickness: 1, color: Colors.white)
      ],
    );
  }

  Widget get selectOneTranslateWidget {
    double radius = 8;
    return Container(
      margin: const EdgeInsets.fromLTRB(5, 10, 13, 10),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(radius),
            child: IntrinsicWidth(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _oneSelectTranslateType(SubtitleOneType.text),
                  _oneSelectTranslateType(SubtitleOneType.talk),
                  _oneSelectTranslateType(SubtitleOneType.narration),
                ],
              ),
            ),
          ),
          Positioned.fill(
              child: IgnorePointer(
            ignoring: true,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(radius),
                  border: Border.all(width: 1, color: Colors.white)),
            ),
          ))
        ],
      ),
    );
  }

  Widget _oneSelectTranslateType(
      SubtitleOneType type) {
    var thisOne = widget.oneTranslate.subtitleOneType == type;
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        ref
            .read(translatorProvider.notifier)
            .setOneTranslateType(widget.oneTranslate, type: type);
      },
      child: Container(
        color: thisOne ? Colors.green : null,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Text(
          type.name,
          style: const TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }
}
