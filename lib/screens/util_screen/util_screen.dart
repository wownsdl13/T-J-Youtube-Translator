import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_translation/screens/translator_screen/local_widgets/upload_file_widget/upload_file_widget.dart';
import 'package:youtube_translation/screens/util_screen/local_widgets/util_audio_to_text_widget.dart';
import 'package:youtube_translation/screens/util_screen/util_provider/util_provider.dart';

class UtilScreen extends ConsumerWidget {
  const UtilScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 25, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Stack(
                  alignment: Alignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Alien Utils v.1.1.0',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(height: 4),
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 40, bottom: 50),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            UtilAudioToTextWidget(),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          loading(ref)
        ],
      ),
    );
  }

  Widget loading(WidgetRef ref) {
    var l = ref.watch(utilProvider).loading;
    if (l != null) {
      return Container(
        color: Colors.black.withOpacity(.7),
        child: Center(
          child: Text(
            l.text,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      );
    }
    return Container();
  }
}
