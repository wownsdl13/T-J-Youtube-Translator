import 'package:flutter/material.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';


typedef DragDropCallback = Function(DropzoneViewController controller, dynamic htmlFile);
class DragDrop extends StatefulWidget {
  const DragDrop({Key? key, required this.dragDropCallback}) : super(key: key);
  final DragDropCallback dragDropCallback;

  @override
  State<DragDrop> createState() => _DragDropState();
}

class _DragDropState extends State<DragDrop> {
  bool _hovering = false;
  late final DropzoneViewController dropzoneViewController;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: true,
      child: Stack(
        children: [
          DropzoneView(
            operation: DragOperation.copy,
            onCreated: (DropzoneViewController ctrl) => dropzoneViewController = ctrl,
            onHover: (){
              if(!_hovering) {
                setState(() {
                  _hovering = true;
                });
              }
            },
            onDrop: (dynamic ev) async {
              setState(() {
                widget.dragDropCallback(dropzoneViewController, ev);
                _hovering = false;
              });
            },
            onLeave: (){
              setState(() {
                _hovering = false;
              });
            },
          ),
          Container(
            color: _hovering?Colors.blue.withOpacity(.3):null,
          )
        ],
      ),
    );
  }
}
