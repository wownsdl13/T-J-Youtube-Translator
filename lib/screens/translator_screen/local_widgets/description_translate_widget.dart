import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_translation/provider/screen_provider/screen_provider.dart';
import 'package:youtube_translation/screens/translator_screen/translator_provider/translator_provider.dart';

class DescriptionTranslateWidget extends ConsumerStatefulWidget {
  const DescriptionTranslateWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<DescriptionTranslateWidget> createState() =>
      _DescriptionTranslateWidgetState();
}

class _DescriptionTranslateWidgetState
    extends ConsumerState<DescriptionTranslateWidget> {
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
              if (ts.translatorLoadingState.translatingDescription)
                const SizedBox(
                    width: 10,
                    height: 10,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 2,
                    )),
              const SizedBox(width: 3),
              const Text(
                'Description : ',
                textAlign: TextAlign.end,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
        const SizedBox(width: 10),
        Container(
            key: ValueKey('${ref.read(translatorProvider).translatorDataState.description}-${ref
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
                              hintText: 'Input youtube description'),
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
                          t.translateDescription(textEditingController.text);
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
    var ts = ref.watch(translatorProvider);
    if (ts.translatorDataState.translatedDescription != null) {
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
                  ts.translatorDataState.translatedDescriptionText!,
                  style: const TextStyle(
                      color: Colors.white, fontSize: 16, height: 1.3),
                )),
                GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () async {
                      await Clipboard.setData(ClipboardData(
                          text: ts
                              .translatorDataState.translatedDescriptionText ?? ''));
                    },
                    child: const Icon(
                      Icons.copy,
                      color: Colors.white,
                      size: 20,
                    ))
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
