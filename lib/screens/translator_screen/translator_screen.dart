import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:provider/provider.dart';
import 'package:youtube_translation/models/one_translate_model.dart';
import 'package:youtube_translation/screens/translator_screen/local_utils/translator_provider.dart';
import 'package:youtube_translation/screens/translator_screen/local_widgets/description_translate_widget.dart';
import 'package:youtube_translation/screens/translator_screen/local_widgets/drag_drop.dart';
import 'package:youtube_translation/screens/translator_screen/local_widgets/float_btn.dart';
import 'package:youtube_translation/screens/translator_screen/local_widgets/title_translate_widget.dart';
import 'package:youtube_translation/screens/translator_screen/local_widgets/translate_subtitle_widget/translate_subtitle_widget.dart';
import 'package:youtube_translation/widgets/pop_up_dialog/pop_up_dialog.dart';

class TranslatorScreen extends StatefulWidget {
  const TranslatorScreen({Key? key}) : super(key: key);

  @override
  State<TranslatorScreen> createState() => _TranslatorScreenState();
}

class _TranslatorScreenState extends State<TranslatorScreen> {
  var lockKey = GlobalKey();
  var langKey = GlobalKey();
  var downloadSubKey = GlobalKey();
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
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Column(
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
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              GestureDetector(
                                behavior: HitTestBehavior.translucent,
                                onTap: () {
                                  PopUpDialog(PopUpWidgetType.changeLang).showDialog(context, targetKey: langKey);
                                },
                                child: Container(
                                  key: langKey,
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 5, 15, 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(
                                          width: 1, color: Colors.white)),
                                  child: Text(
                                    'To ${OneTranslateModel.langName(tp.languageCode)}',
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                behavior: HitTestBehavior.translucent,
                                onTap: () {
                                  PopUpDialog(PopUpWidgetType.keyInput)
                                      .showDialog(context, targetKey: lockKey);
                                },
                                child: Padding(
                                  key: lockKey,
                                  padding:
                                      const EdgeInsets.fromLTRB(25, 5, 25, 5),
                                  child: const Icon(Icons.key,
                                      color: Colors.white, size: 28),
                                ),
                              ),
                            ],
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
