import 'package:flutter/material.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:youtube_translation/screens/translator_screen/local_widgets/drag_drop.dart';

class UploadFileWidget extends StatelessWidget {
  const UploadFileWidget(
      {Key? key,
      required this.name,
      required this.emptyText,
      required this.child,
      required this.size,
      required this.hasValue, required this.dragDropCallback})
      : super(key: key);
  final String name;
  final String emptyText;
  final Widget child;
  final DragDropCallback dragDropCallback;
  final bool hasValue;
  final Size size;

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
          child: Text(
            '$name : ',
            textAlign: TextAlign.end,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1, color: Colors.white)),
            width: size.width,
            height: size.height,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Stack(
                children: [
                  _screen,
                  DragDrop(dragDropCallback: dragDropCallback)
                ],
              ),
            )),
      ],
    );
  }

  Widget get _screen {
    if (hasValue) {
      return child;
    } else {
      return Center(
        child: Text(
          emptyText,
          style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
        ),
      );
    }
  }
}
