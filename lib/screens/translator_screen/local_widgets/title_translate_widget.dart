import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_translation/provider/screen_provider/screen_provider.dart';
import 'package:youtube_translation/screens/translator_screen/translator_provider/translator_provider.dart';

class TitleTranslateWidget extends ConsumerStatefulWidget {
  const TitleTranslateWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<TitleTranslateWidget> createState() =>
      _TitleTranslateWidgetState();
}

class _TitleTranslateWidgetState extends ConsumerState<TitleTranslateWidget> {
  final textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var ts = ref.watch(translatorProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          constraints: const BoxConstraints(minWidth: 115),
          padding: const EdgeInsets.only(top: 13),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (ts.translatorLoadingState.translatingTitle)
                const SizedBox(
                    width: 10,
                    height: 10,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 2,
                    )),
              const SizedBox(width: 3),
              const Text(
                'Title : ',
                textAlign: TextAlign.end,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
            key: ValueKey('${ref.read(translatorProvider).translatorDataState.title}-${ref
                .watch(
                screenProvider.select((value) => value.languageCode))}'),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1, color: Colors.white)),
            constraints: const BoxConstraints(maxWidth: 700),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: textEditingController,
                          maxLines: null,
                          cursorColor: Colors.grey.shade400,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.grey.shade700),
                              hintText: 'Input youtube title'),
                        ),
                      ),
                      GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () async {
                          await Clipboard.setData(
                              ClipboardData(text: textEditingController.text));
                        },
                        child: const Icon(
                          Icons.copy,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          var t = ref.read(translatorProvider.notifier);
                          t.translateTitle(textEditingController.text);
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(right: 4),
                          child: Icon(Icons.translate,
                              color: Colors.white, size: 23),
                        ),
                      )
                    ],
                  ),
                ),
                _translated(context)
              ],
            )),
      ],
    );
  }

  Widget _translated(BuildContext context) {
    var ts = ref.read(translatorProvider);
    if (ts.translatorDataState.translatedTitle != null) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Divider(
            height: 1,
            thickness: 1,
            color: Colors.white,
          ),
          Container(
            width: double.infinity,
            padding:
                const EdgeInsets.only(left: 10, right: 15, top: 15, bottom: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Text(
                  ts.translatorDataState.translatedTitleText ?? '',
                  style: const TextStyle(
                      color: Colors.white, fontSize: 16, height: 1.3),
                )),
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () async {
                    await Clipboard.setData(ClipboardData(
                        text: ts.translatorDataState.translatedTitleText!));
                  },
                  child: const Icon(
                    Icons.copy,
                    color: Colors.white,
                    size: 20,
                  ),
                )
              ],
            ),
          ),
        ],
      );
    } else {
      return Container();
    }
  }
}
