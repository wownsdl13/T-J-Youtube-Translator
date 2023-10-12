import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_translation/screens/translator_screen/local_utils/translator_provider.dart';
import 'package:youtube_translation/screens/translator_screen/local_widgets/translate_subtitle_widget/local_widgets/one_translate_item.dart';

class TranslateSubtitleWidget extends StatelessWidget {
  const TranslateSubtitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tp = context.watch<TranslatorProvider>();
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            constraints: const BoxConstraints(minWidth: 100),
            padding: const EdgeInsets.only(top: 13),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (tp.reading)
                  const SizedBox(
                      width: 10,
                      height: 10,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 2,
                      )),
                const SizedBox(width: 3),
                const Text(
                  'Subtitles : ',
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
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1, color: Colors.white)),
              constraints: const BoxConstraints(maxWidth: 700),
              height: double.infinity,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: tp.srtList.length,
                itemBuilder: (context, index) =>
                    OneTranslateItem(oneTranslateModel: tp.srtList[index]),
              )),
          const SizedBox(
            width: 80,
          )
        ],
      ),
    );
  }
}
