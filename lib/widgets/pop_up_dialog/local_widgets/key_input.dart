import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_translation/screens/translator_screen/local_utils/translator_provider.dart';
import 'package:youtube_translation/utils/key_storage.dart';

class KeyInput extends StatefulWidget {
  const KeyInput({Key? key, required this.onClose}) : super(key: key);
  final GestureTapCallback onClose;

  @override
  _KeyInputState createState() => _KeyInputState();
}

class _KeyInputState extends State<KeyInput> {
  final gptController = TextEditingController();
  final youtubeController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    var tp = context.read<TranslatorProvider>();
    KeyStorage.getKey(KeyStorage.chatGptKey).then((value){
      gptController.text = value ??= '';
    });
    gptController.addListener(() async{
      await KeyStorage.setKey(KeyStorage.chatGptKey, gptController.text);
    });
    youtubeController.addListener(() async{
      if(youtubeController.text.isNotEmpty) {
        tp.setYoutubeApiKey(youtubeController.text);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
          maxWidth: 400
      ),
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          color: Colors.grey.shade900,
          border: Border.all(width: 1, color: Colors.white), borderRadius: const BorderRadius.only(topLeft: Radius.circular(8), bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Icon(Icons.key, color: Colors.white, size: 30),
              ),
              Expanded(
                child: TextField(
                  maxLines: 1,
                  controller: gptController,
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
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Icon(Icons.video_call_rounded, color: Colors.white, size: 30),
              ),
              Expanded(
                child: TextField(
                  maxLines: 1,
                  controller: youtubeController,
                  cursorColor: Colors.grey.shade600,
                  onSubmitted: (str){
                    widget.onClose();
                  },
                  obscureText: true,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(border: InputBorder.none, hintText: 'Input youtube data api key', hintStyle: TextStyle(color: Colors.grey.shade700)),
                ),
              ),
              const SizedBox(width: 10,)
            ],
          )
        ],
      ),
    );
  }
}
