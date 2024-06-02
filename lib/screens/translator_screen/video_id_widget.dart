import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_translation/screens/translator_screen/translator_provider/translator_provider.dart';

class VideoIdWidget extends ConsumerStatefulWidget {
  const VideoIdWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<VideoIdWidget> createState() => _VideoIdWidgetState();
}

class _VideoIdWidgetState extends ConsumerState<VideoIdWidget> {
  final textEditingController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    var ts = ref.read(translatorProvider);
    var t = ref.read(translatorProvider.notifier);
    textEditingController.text = ts.translatorDataState.videoId;
    textEditingController.addListener(() {
      t.setVideoId = textEditingController.text.trim();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          constraints: const BoxConstraints(minWidth: 100),
          padding: const EdgeInsets.only(top: 13),
          child: const Text(
            'Video id : ',
            textAlign: TextAlign.end,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1, color: Colors.white)),
            constraints: const BoxConstraints(maxWidth: 700),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: TextField(
                controller: textEditingController,
                maxLines: null,
                cursorColor: Colors.grey.shade400,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.grey.shade700),
                    hintText: 'Input youtube video id'),
              ),
            )),
      ],
    );
  }
}
