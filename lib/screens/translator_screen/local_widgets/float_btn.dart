import 'package:flutter/material.dart';

class FloatBtn extends StatelessWidget {
  const FloatBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 5, 25),
      child: IntrinsicWidth(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(23, 10, 23, 10),
              child: Text('Translate', style: TextStyle(color: Colors.white, fontSize: 16),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(23, 10, 23, 10),
              child: Text('Download sub', style: TextStyle(color: Colors.white, fontSize: 16),),
            ),
        ],),
      ),
    );
  }
}
