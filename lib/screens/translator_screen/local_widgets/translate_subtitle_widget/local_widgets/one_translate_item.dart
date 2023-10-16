import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_translation/models/one_translate_model.dart';
import 'package:youtube_translation/screens/translator_screen/local_utils/translator_provider.dart';

class OneTranslateItem extends StatefulWidget {
  const OneTranslateItem({Key? key, required this.oneTranslateModel, required this.translatedText}) : super(key: key);
  final OneTranslateModel oneTranslateModel;
  final String translatedText;

  @override
  State<OneTranslateItem> createState() => _OneTranslateItemState();
}

class _OneTranslateItemState extends State<OneTranslateItem> {
  final textEditingController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    textEditingController.text = widget.translatedText;
    textEditingController.addListener(() => setState(() {

    }));
    super.initState();
  }

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
                    widget.oneTranslateModel.order.toString(),
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
                      widget.oneTranslateModel.period,
                      style: TextStyle(
                          color: Colors.grey.shade700, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      widget.oneTranslateModel.getLang(OneTranslateModel.original),
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    const SizedBox(height: 5),
                    TextField(
                      controller: textEditingController,
                      maxLines: null,
                      cursorColor: Colors.grey.shade400,
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                      decoration: const InputDecoration(isDense: true, border: InputBorder.none),
                    ),
                  ],
                ),
              )),
              Container(
                width: 1,
                color: Colors.white,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
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
                            value: widget.oneTranslateModel.quotes,
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
                                tp.changeQuotes(widget.oneTranslateModel, check);
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
                            value: widget.oneTranslateModel.bracket,
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
                                tp.changeBracket(widget.oneTranslateModel, check);
                              }
                            },
                          ),
                        ],
                      ),
                      const SizedBox(width: 15)
                    ],
                  ),
                  const SizedBox(height: 5),
                  Opacity(
                    opacity: textEditingController.text == widget.translatedText?0.2:1,
                    child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: (){
                        tp.changeSubTxt(widget.oneTranslateModel, textEditingController.text);
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.fromLTRB(22, 6, 22, 6),
                        decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.white), borderRadius: BorderRadius.circular(8)),
                        child: const Text('Save', style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  )
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
