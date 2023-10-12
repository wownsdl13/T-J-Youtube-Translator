import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_translation/models/one_translate_model.dart';
import 'package:youtube_translation/screens/translator_screen/local_utils/translator_provider.dart';

class OneTranslateItem extends StatelessWidget {
  const OneTranslateItem({Key? key, required this.oneTranslateModel}) : super(key: key);
  final OneTranslateModel oneTranslateModel;

  @override
  Widget build(BuildContext context) {
    var tp = context.watch<TranslatorProvider>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 3),
          child: Row(
            children: [
              Container(
                  constraints: const BoxConstraints(
                    minWidth: 50,
                  ),
                  child: Text(
                    oneTranslateModel.order.toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                  )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 12, 5, 12),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      oneTranslateModel.period,
                      style: TextStyle(
                          color: Colors.grey.shade700, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      oneTranslateModel.korean,
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      oneTranslateModel.english,
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
              )),
              Container(
                width: 1,
                color: Colors.white,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('"',
                          style:
                              TextStyle(color: Colors.white, fontSize: 17)),
                      Checkbox(
                        value: oneTranslateModel.quotes,
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
                            tp.changeQuotes(oneTranslateModel, check);
                          }
                        },
                      ),
                    ],
                  ),
                  const SizedBox(width: 15),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('(',
                          style:
                              TextStyle(color: Colors.white, fontSize: 17)),
                      Checkbox(
                        value: oneTranslateModel.bracket,
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
                            tp.changeBracket(oneTranslateModel, check);
                          }
                        },
                      ),
                    ],
                  ),
                  const SizedBox(width: 15)
                ],
              )
            ],
          ),
        ),
        const Divider(height: 1, thickness: 1, color: Colors.white)
      ],
    );
  }
}
