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
      onTap: () {
        // tp.download();
      },
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 0, 5, 25),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
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
                        return const BorderSide(width: 1.2, color: Colors.white);
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
            const Padding(
              padding: EdgeInsets.fromLTRB(23, 5, 23, 10),
              child: Text(
                'Download sub',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
