import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:provider/provider.dart';
import 'package:youtube_translation/screens/translator_screen/local_utils/key_input_dialog.dart';
import 'package:youtube_translation/screens/translator_screen/local_utils/translator_provider.dart';
import 'package:youtube_translation/screens/translator_screen/local_widgets/description_translate_widget.dart';
import 'package:youtube_translation/screens/translator_screen/local_widgets/drag_drop.dart';
import 'package:youtube_translation/screens/translator_screen/local_widgets/float_btn.dart';
import 'package:youtube_translation/screens/translator_screen/local_widgets/title_translate_widget.dart';
import 'package:youtube_translation/screens/translator_screen/local_widgets/translate_subtitle_widget/translate_subtitle_widget.dart';
import 'package:youtube_translation/services/translate_https.dart';
import 'package:youtube_translation/utils/srt_split_util.dart';

class TranslatorScreen extends StatefulWidget {
  const TranslatorScreen({Key? key}) : super(key: key);

  @override
  State<TranslatorScreen> createState() => _TranslatorScreenState();
}

class _TranslatorScreenState extends State<TranslatorScreen> {
  var lockKey = GlobalKey();
  late DropzoneViewController dropzoneViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: ChangeNotifierProvider<TranslatorProvider>.value(
        value: context.read<TranslatorProvider>(),
        builder: (context, widget) {
          var tp = context.watch<TranslatorProvider>();
          return Stack(
            fit: StackFit.expand,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 25, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Opacity(
                          opacity: 0,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(25, 5, 25, 5),
                            child:
                                Icon(Icons.menu, color: Colors.white, size: 28),
                          ),
                        ),
                        Expanded(
                            child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              'T & J Youtube translator v.1.0.0',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "drag your srt file here!",
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 15),
                            ),
                          ],
                        )),
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            KeyInputDialog.showDialog(context, lockKey);
                          },
                          child: Padding(
                            key: lockKey,
                            padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
                            child: const Icon(Icons.lock,
                                color: Colors.white, size: 28),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    const TitleTranslateWidget(),
                    const SizedBox(height: 50),
                    const DescriptionTranslateWidget(),
                    const SizedBox(height: 50),
                    const Expanded(child: TranslateSubtitleWidget()),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              const Align(alignment: Alignment.bottomRight, child: FloatBtn()),
              const Positioned.fill(child: DragDrop()),
              IgnorePointer(
                ignoring: true,
                child: Container(
                  color: tp.dragDropState ? Colors.blue.withOpacity(.3) : null,
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
