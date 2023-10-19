import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_translation/screens/translator_screen/local_utils/translator_provider.dart';
import 'package:youtube_translation/utils/key_storage.dart';

class TitleHeaderWidget extends StatefulWidget {
  const TitleHeaderWidget({Key? key}) : super(key: key);

  @override
  State<TitleHeaderWidget> createState() => _TitleHeaderWidgetState();
}

class _TitleHeaderWidgetState extends State<TitleHeaderWidget> {
  final textEditingController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    var tp = context.read<TranslatorProvider>();
    tp.getTitleHeader.then((value){
      setState(() {
        textEditingController.text = value ?? '';
      });
    });
    textEditingController.addListener(() async{
      await tp.setTitleHeader(textEditingController.text);
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
            'T Header : ',
            textAlign: TextAlign.end,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1, color: Colors.white)),
            width: 250,
            height: 50,
            child: TextField(
              controller: textEditingController,
              maxLines: 1,
              cursorColor: Colors.grey.shade400,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey.shade700),
                  hintText: 'Input title header'),
            )),
      ],
    );
  }
}
