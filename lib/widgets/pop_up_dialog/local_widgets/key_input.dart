import 'package:flutter/material.dart';
import 'package:youtube_translation/utils/chat_gpt_key.dart';

class KeyInput extends StatefulWidget {
  const KeyInput({Key? key, required this.onClose}) : super(key: key);
  final GestureTapCallback onClose;

  @override
  _KeyInputState createState() => _KeyInputState();
}

class _KeyInputState extends State<KeyInput> {
  var textEditController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    ChatGPTKey.getKey.then((value){
      textEditController.text = value ??= '';
    });
    textEditController.addListener(() async{
      await ChatGPTKey.setKey(textEditController.text);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
          maxWidth: 400
      ),
      decoration: BoxDecoration(
          color: Colors.grey.shade900,
          border: Border.all(width: 1, color: Colors.white), borderRadius: const BorderRadius.only(topLeft: Radius.circular(8), bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8))),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Icon(Icons.key, color: Colors.white, size: 30),
          ),
          Expanded(
            child: TextField(
              maxLines: 1,
              controller: textEditController,
              cursorColor: Colors.grey.shade600,
              onSubmitted: (str){
                widget.onClose();
              },
              obscureText: true,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(border: InputBorder.none, hintText: 'Input chatGPT api key', hintStyle: TextStyle(color: Colors.grey.shade700)),
            ),
          ),
          const SizedBox(width: 10,)
        ],
      ),
    );
  }
}
