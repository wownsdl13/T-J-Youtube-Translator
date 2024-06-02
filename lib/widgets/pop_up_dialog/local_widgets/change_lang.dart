import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_translation/provider/screen_provider/screen_provider.dart';
import 'package:youtube_translation/utils/languages.dart';

class ChangeLang extends ConsumerWidget {
  const ChangeLang({Key? key, required this.onClose}) : super(key: key);
  final GestureTapCallback onClose;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      decoration: BoxDecoration(
          color: Colors.grey.shade900,
          border: Border.all(width: 1, color: Colors.white),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8))),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: Languages.langList
              .map((e) => GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      var t = ref.read(screenProvider.notifier);
                      t.setLanguageCode = e;
                      onClose();
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      child: Text(
                        Languages.langName(e),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ))
              .toList()),
    );
  }
}
