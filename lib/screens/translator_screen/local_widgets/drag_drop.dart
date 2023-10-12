import 'package:flutter/material.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:provider/provider.dart';
import 'package:youtube_translation/screens/translator_screen/local_utils/translator_provider.dart';

class DragDrop extends StatelessWidget {
  const DragDrop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tp = context.watch<TranslatorProvider>();
    return IgnorePointer(
      ignoring: true,
      child: DropzoneView(
        operation: DragOperation.copy,
        onCreated: (DropzoneViewController ctrl) => tp.setDropzoneViewController = ctrl,
        onLoaded: () => print('Zone loaded'),
        onError: (String? ev) => print('Error: $ev'),
        onHover: () => tp.setDragDropState = true,
        onDrop: (dynamic ev) async {
          tp.readSrt(ev);
        },
        onLeave: () => tp.setDragDropState = false,
      ),
    );
  }
}
