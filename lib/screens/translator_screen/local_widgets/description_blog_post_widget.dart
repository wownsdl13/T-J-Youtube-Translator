import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_translation/screens/translator_screen/local_utils/translator_provider.dart';
import 'package:youtube_translation/utils/key_storage.dart';

class DescriptionBlogPostWidget extends StatefulWidget {
  const DescriptionBlogPostWidget({Key? key}) : super(key: key);

  @override
  State<DescriptionBlogPostWidget> createState() => _DescriptionBlogPostWidgetState();
}

class _DescriptionBlogPostWidgetState extends State<DescriptionBlogPostWidget> {
  final textEditingController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    var tp = context.read<TranslatorProvider>();
    textEditingController.addListener(() async{
      tp.setBlogPostLink = textEditingController.text.trim();
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
            'Blog link : ',
            textAlign: TextAlign.end,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            constraints: const BoxConstraints(
              minHeight: 50
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1, color: Colors.white)),
            width: 250,
            child: TextField(
              controller: textEditingController,
              maxLines: null,
              cursorColor: Colors.grey.shade400,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey.shade700),
                  hintText: 'Input blog post link'),
            )),
      ],
    );
  }
}
