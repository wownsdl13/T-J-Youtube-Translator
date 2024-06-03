import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_translation/screens/translator_screen/translator_provider/translator_provider.dart';

class UploadingWidget extends ConsumerWidget {
  const UploadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var ts = ref.watch(translatorProvider);
    if (ts.isUploading) {
      return Container(
        key: ValueKey(ts.uploadPercentage),
        color: Colors.black.withOpacity(.7),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (ts.uploadPercentage?.percentage != null)
                Text('${ts.uploadPercentage?.percentage}%',
                    style: const TextStyle(color: Colors.white, fontSize: 50)),
              Text(ts.uploadText,
                  style: const TextStyle(color: Colors.white, fontSize: 21)),
            ],
          ),
        ),
      );
    } else {
      return Container();
    }
  }
}
