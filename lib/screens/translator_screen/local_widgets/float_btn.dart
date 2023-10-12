import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_translation/screens/translator_screen/local_utils/translator_provider.dart';

class FloatBtn extends StatelessWidget {
  const FloatBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tp = context.watch<TranslatorProvider>();
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: (){
        tp.download();
      },
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 0, 5, 25),
        child: const Padding(
          padding: EdgeInsets.fromLTRB(23, 10, 23, 10),
          child: Text('Download sub', style: TextStyle(color: Colors.white, fontSize: 16),),
        ),
      ),
    );
  }
}
