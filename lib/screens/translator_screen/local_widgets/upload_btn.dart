import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_translation/screens/translator_screen/local_utils/translator_provider.dart';

class UploadBtn extends StatelessWidget {
  const UploadBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tp = context.watch<TranslatorProvider>();
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        tp.download();
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
                    value: tp.addOriginal,
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
                        tp.setAddOriginal = check;
                      }
                    },
                  )
                ],
              ),
            ),
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: (){
                tp.download();
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
              ignoring: !tp.readyToUpload,
              child: Opacity(
                opacity: tp.readyToUpload?1:.3,
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: (){
                    tp.upload();
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
