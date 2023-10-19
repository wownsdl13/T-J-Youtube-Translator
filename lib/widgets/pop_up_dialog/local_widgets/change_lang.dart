import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_translation/models/one_translate_model.dart';
import 'package:youtube_translation/screens/translator_screen/local_utils/translator_provider.dart';

class ChangeLang extends StatelessWidget {
  const ChangeLang({Key? key, required this.onClose}) : super(key: key);
  final GestureTapCallback onClose;

  @override
  Widget build(BuildContext context) {
    var tp = context.watch<TranslatorProvider>();
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
          children: OneTranslateModel.langList
              .map((e) => GestureDetector(
            behavior: HitTestBehavior.translucent,
                onTap: (){
                  tp.setLanguageCode = e;
                  onClose();
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Text(
                        OneTranslateModel.langName(e),
                        style: const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                ),
              ))
              .toList()),
    );
  }
}
