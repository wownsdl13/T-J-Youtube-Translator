import 'package:flutter/material.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_translation/screens/translator_screen/local_widgets/drag_drop.dart';
import 'package:youtube_translation/screens/util_screen/util_provider/util_provider.dart';

class UtilAudioToTextWidget extends ConsumerWidget {
  const UtilAudioToTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.only(right: 110),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            constraints: const BoxConstraints(minWidth: 100),
            padding: const EdgeInsets.only(top: 13),
            child: const Text(
              'A2T : ',
              textAlign: TextAlign.end,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1, color: Colors.white)),
              width: 300,
              height: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Stack(
                  children: [
                    Center(
                      child: Text(
                        'Drop audio file here!',
                        style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
                      ),
                    ),
                    DragDrop(dragDropCallback: (DropzoneViewController controller,
                        dynamic htmlFile) async {
                      ref
                          .read(utilProvider.notifier)
                          .voiceToAudio(controller.getFileData(htmlFile));
                    })
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
