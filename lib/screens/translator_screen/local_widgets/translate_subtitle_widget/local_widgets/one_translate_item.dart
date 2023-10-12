import 'package:flutter/material.dart';

class OneTranslateItem extends StatelessWidget {
  const OneTranslateItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: Row(
              children: [
                Container(
                    constraints: BoxConstraints(
                      minWidth: 50,
                    ),
                    child: Text(
                      '1',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 12, 5, 12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '10:30:30 -> 10:30:30',
                        style: TextStyle(
                            color: Colors.grey.shade700, fontSize: 14),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        '한국어는 여기',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'english here',
                        style: TextStyle(color: Colors.white, fontSize: 14),
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
                          value: true,
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
                          onChanged: (check) {},
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
                          value: false,
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
                          onChanged: (check) {},
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
      ),
    );
  }
}
