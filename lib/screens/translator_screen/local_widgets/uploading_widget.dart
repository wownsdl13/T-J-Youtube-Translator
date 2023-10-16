import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_translation/screens/translator_screen/local_utils/translator_provider.dart';

class UploadingWidget extends StatelessWidget {
  const UploadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tp = context.watch<TranslatorProvider>();
    if(tp.isUploading) {
      return Container(
        color: Colors.black.withOpacity(.7),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('${tp.uploadPercentage}%', style: const TextStyle(color: Colors.white, fontSize: 70)),
              Text(tp.uploadText, style: const TextStyle(color: Colors.white, fontSize: 21)),
            ],
          ),
        ),
      );
    }else{
      return Container();
    }
  }
}
