import 'package:flutter/material.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_translation/data/client/remote/subtitle_client/enum/get_subtitle_direction.dart';
import 'package:youtube_translation/provider/screen_provider/screen_provider.dart';
import 'package:youtube_translation/screens/translator_screen/local_widgets/drag_drop.dart';
import 'package:youtube_translation/screens/translator_screen/local_widgets/translate_subtitle_widget/local_widgets/one_translate_item.dart';
import 'package:youtube_translation/screens/translator_screen/translator_provider/translator_provider.dart';
import 'package:youtube_translation/utils/languages.dart';

class TranslateSubtitleWidget extends ConsumerWidget {
  const TranslateSubtitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var ts = ref.watch(translatorProvider);
    return IntrinsicHeight(
      child: Row(
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
                if (ts.translatorLoadingState.readingSrt)
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
              child: _subtitles(ref)),
        ],
      ),
    );
  }

  Widget _subtitles(WidgetRef ref) {
    var ss = ref.watch(screenProvider);
    var ts = ref.watch(translatorProvider);
    var translateList = ts.translatorDataState.translateList;
    var hasTranslates = translateList.isNotEmpty;
    Widget dragPart = Stack(
      fit: StackFit.expand,
      children: [
        Center(
          child: Text(
            "Drag your 'Korean' srt file here!",
            style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
          ),
        ),
        DragDrop(dragDropCallback:
            (DropzoneViewController controller, htmlFile) async {
          var t = ref.read(translatorProvider.notifier);
          var fileData = await controller.getFileData(htmlFile);
          var fileName = await controller.getFilename(htmlFile);
          t.setSubtitle(name: fileName, data: fileData);
        }),
      ],
    );
    if (hasTranslates) {
      dragPart = Stack(
        fit: StackFit.expand,
        children: [
          ListView.builder(
              key: ValueKey(
                'subtitle - ${ts.translatorDataState.translatedCount} - ${ref
                    .watch(
                    screenProvider.select((value) => value.languageCode))}'),
                padding: EdgeInsets.zero,
                itemCount: translateList.length,
                itemBuilder: (context, index) =>
                    OneTranslateItem(
                        oneTranslate: translateList[index],
                        translatedText: translateList[index].getLang(
                            ss.languageCode)),
              ),
              if (ts.translatorLoadingState.loadingPercentage != null)
          Container(
            color: Colors.black.withOpacity(.6),
            child: Center(
                child: Text(
                  'Translate loading ${ts.translatorLoadingState
                      .loadingPercentage}%',
                  style: const TextStyle(color: Colors.white, fontSize: 23),
                )),
          ),
          if (ts.translatorLoadingState.gettingAudio)
            Container(
              color: Colors.black.withOpacity(.6),
              child: const Center(
                  child: Text(
                    'Downloading TTS audio',
                    style: TextStyle(color: Colors.white, fontSize: 23),
                  )),
            )
        ],
      );
    } else {
      if (ts.translatorDataState.translateList.isNotEmpty &&
          !ts.translatorDataState.translatedToEn) {
        dragPart = const Center(
          child: Text(
            'Translate file ready',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        );
      }
    }

    return Column(
      children: [
        Expanded(
          child: dragPart,
        ),
        Container(height: 1, color: Colors.white),
        SizedBox(
          height: 70,
          child: Row(
            children: [
              backBtn(ref),
              Container(width: 1, color: Colors.white),
              translateToEnglishBtn(ref),
              Container(width: 1, color: Colors.white),
              translateToAllBtn(ref),
              Container(width: 1, color: Colors.white),
              nextBtn(ref),
              Container(width: 1, color: Colors.white),
              ttsDownloadBtn(ref),
              Container(width: 1, color: Colors.white),
              deleteBtn(ref),
            ],
          ),
        )
      ],
    );
  }

  Widget backBtn(WidgetRef ref) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        ref
            .read(translatorProvider.notifier)
            .search(direction: GetSubtitleDirection.previous);
      },
      child: Container(
          height: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: const Center(
              child: Icon(Icons.arrow_back_rounded,
                  color: Colors.white, size: 23))),
    );
  }

  Widget nextBtn(WidgetRef ref) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        ref
            .read(translatorProvider.notifier)
            .search(direction: GetSubtitleDirection.next);
      },
      child: Container(
          height: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: const Center(
              child: Icon(Icons.arrow_forward_rounded,
                  color: Colors.white, size: 23))),
    );
  }

  Widget ttsDownloadBtn(WidgetRef ref) {
    var ts = ref.watch(translatorProvider);
    var tn = ts.translatorDataState.translatedToEn &&
        !ts.translatorLoadingState.gettingAudio;
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        if (tn) {
          ref.read(translatorProvider.notifier).getAudio();
        }
      },
      child: Container(
          height: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Center(
              child: Icon(Icons.record_voice_over_rounded,
                  color: tn ? Colors.white : Colors.grey.shade600, size: 23))),
    );
  }

  Widget deleteBtn(WidgetRef ref) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        ref.read(translatorProvider.notifier).delete();
      },
      child: Container(
          height: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: const Center(
              child: Icon(Icons.delete_forever_rounded,
                  color: Colors.white, size: 23))),
    );
  }

  Widget translateToEnglishBtn(WidgetRef ref) {
    var ts = ref.watch(translatorProvider);
    GestureTapCallback? onTap;
    var color = Colors.grey.shade600;
    if (!ts.isUploading &&
        !ts.translatorLoadingState.readingSrt &&
        !ts.translatorDataState.translatedToEn &&
        ts.translatorDataState.translateList.isNotEmpty) {
      color = Colors.white;
      onTap = () {
        var t = ref.read(translatorProvider.notifier);
        t.translateToTargetLang(
            fromLanguageCode: Languages.original, toLanguageCode: Languages.en);
      };
    }
    return Expanded(
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: onTap,
          child: Center(
            child: Text(
              'Translate to English',
              style: TextStyle(color: color, fontSize: 17),
            ),
          ),
        ));
  }

  Widget translateToAllBtn(WidgetRef ref) {
    var ts = ref.watch(translatorProvider);
    GestureTapCallback? onTap;
    var color = Colors.grey.shade600;
    if (!ts.isUploading &&
        !ts.translatorLoadingState.readingSrt &&
        ts.translatorDataState.translatedToEn &&
        !ts.translatorDataState.translatedToAll) {
      color = Colors.white;
      onTap = () {
        var t = ref.read(translatorProvider.notifier);
        t.translateToAll();
      };
    }
    return Expanded(
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: onTap,
          child: Center(
            child: Text(
              'Translate to All',
              style: TextStyle(color: color, fontSize: 17),
            ),
          ),
        ));
  }
}
