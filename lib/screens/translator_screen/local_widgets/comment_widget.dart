import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_translation/screens/translator_screen/translator_provider/translator_provider.dart';

class CommentWidget extends ConsumerStatefulWidget {
  const CommentWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<CommentWidget> createState() => _CommentWidgetState();
}

class _CommentWidgetState extends ConsumerState<CommentWidget> {
  final textEditingController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    textEditingController.addListener((){
      var t = ref.read(translatorProvider.notifier);
      t.setComment = textEditingController.text;
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
            'Comment : ',
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
              maxLines: null,
              cursorColor: Colors.grey.shade400,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey.shade700),
                  hintText: 'Input Comment'),
            )),
      ],
    );
  }
}
