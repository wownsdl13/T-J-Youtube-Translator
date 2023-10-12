import 'package:flutter/material.dart';
import 'package:youtube_translation/utils/chat_gpt_key.dart';

class KeyInputDialog{
  static OverlayEntry? _overlayEntry;
  static Future showDialog(BuildContext context, GlobalKey targetKey) async{
    if(targetKey.currentContext == null){
      return;
    }
    final overlay = Overlay.of(context);
    final renderBox = targetKey.currentContext!.findRenderObject() as RenderBox;
    final screenBox = context.findRenderObject() as RenderBox;
    final offset = renderBox.localToGlobal(Offset.zero);
    var textEditController = TextEditingController();
    textEditController.text = await ChatGPTUtil.getKey ?? '';
    textEditController.addListener(() async{
      await ChatGPTUtil.setKey(textEditController.text);
    });
    _overlayEntry = OverlayEntry(
      builder: (context) => Material(
        color: Colors.transparent,
        child: Stack(
          children: [
            GestureDetector(
              behavior: HitTestBehavior.translucent,
                onTap: (){
                  _closeDialog();
                },
                child: Container()),
            Positioned(
              right: screenBox.size.width - offset.dx - renderBox.size.width/2 + 2,
              top: offset.dy + renderBox.size.height / 2 + 2,
              child: Container(
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
                          _closeDialog();
                        },
                        obscureText: true,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(border: InputBorder.none, hintText: 'Input chatGPT api key', hintStyle: TextStyle(color: Colors.grey.shade700)),
                      ),
                    ),
                    const SizedBox(width: 10,)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    overlay.insert(_overlayEntry!);
  }

  static void _closeDialog() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }
}