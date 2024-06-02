import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_translation/screens/translator_screen/translator_provider/translator_provider.dart';

class UploadBtn extends ConsumerWidget {
  const UploadBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var ts = ref.watch(translatorProvider);
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        var t = ref.read(translatorProvider.notifier);
        t.download();
      },
      child: Container(
        margin: const EdgeInsets.only(top: 20, left: 100, bottom: 5),
        width: 250,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(23, 10, 17, 5),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Add Original Language',
                    style: TextStyle(color: Colors.grey.shade700, fontSize: 14),
                  ),
                  Checkbox(
                    value: ts.addOriginal,
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.selected)) {
                          return Colors.green; // 선택된 상태에서의 배경색ㅡ
                        }
                        return Colors.transparent;
                      },
                    ),
                    side: MaterialStateBorderSide.resolveWith(
                          (states){
                        if (states.contains(MaterialState.selected)) {
                          return const BorderSide(width: 1.2, color: Colors.transparent);
                        }
                        return BorderSide(width: 1.2, color: Colors.grey.shade700);
                      },
                    ),
                    onChanged: (check) {
                      if(check != null) {
                        var t = ref.watch(translatorProvider.notifier);
                        t.setAddOriginal = check;
                      }
                    },
                  )
                ],
              ),
            ),
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: (){
                var t = ref.watch(translatorProvider.notifier);
                t.download();
              },
              child: Container(
                padding: const EdgeInsets.fromLTRB(23, 10, 23, 10),
                decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.white), borderRadius: BorderRadius.circular(8)),
                child: const Text(
                  'Download sub',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 30),
            IgnorePointer(
              ignoring: !ts.readyToUpload,
              child: Opacity(
                opacity: ts.readyToUpload?1:.3,
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: (){
                    var t = ref.read(translatorProvider.notifier);
                    t.upload();
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(30, 13, 30, 13),
                    decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.white), borderRadius: BorderRadius.circular(8)),
                    child: const Text(
                      'Upload to Youtube',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
