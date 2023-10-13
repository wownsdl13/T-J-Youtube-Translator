import 'package:flutter/material.dart';
import 'package:youtube_translation/widgets/pop_up_dialog/local_widgets/change_lang.dart';
import 'package:youtube_translation/widgets/pop_up_dialog/local_widgets/key_input.dart';

enum PopUpWidgetType{
  keyInput,
  changeLang,
  downloadSub
}

class PopUpDialog{
  PopUpDialog(this.type);
  final PopUpWidgetType type;
  OverlayEntry? _overlayEntry;

  Future showDialog(BuildContext context, {required GlobalKey targetKey}) async{
    if(targetKey.currentContext == null){
      return;
    }
    final overlay = Overlay.of(context);
    final renderBox = targetKey.currentContext!.findRenderObject() as RenderBox;
    final screenBox = context.findRenderObject() as RenderBox;
    final offset = renderBox.localToGlobal(Offset.zero);
    Widget child;
    switch(type){
      case PopUpWidgetType.keyInput:
        child = KeyInput(onClose: _closeDialog);
        break;
      case PopUpWidgetType.changeLang:
        child = ChangeLang(onClose: _closeDialog);
        break;
      case PopUpWidgetType.downloadSub:
        // TODO: Handle this case.
      child = Container();
        break;
    }

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
              child: child,
            ),
          ],
        ),
      ),
    );
    overlay.insert(_overlayEntry!);
  }

  void _closeDialog() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }
}