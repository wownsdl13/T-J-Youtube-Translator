import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_translation/screens/translator_screen/translator_provider/translator_provider.dart';

class TagWidget extends ConsumerStatefulWidget {
  const TagWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<TagWidget> createState() => _TagWidgetState();
}

class _TagWidgetState extends ConsumerState<TagWidget> {
  late final TextEditingController tec;
  final tagFocus = FocusNode();
  bool _textChanged = false;

  @override
  void initState() {
    // TODO: implement initState
    tec = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var ts = ref.watch(translatorProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          constraints: const BoxConstraints(minWidth: 100),
          padding: const EdgeInsets.only(top: 13),
          child: const Text(
            'Tags : ',
            textAlign: TextAlign.end,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            FocusScope.of(context).requestFocus(tagFocus);
          },
          child: Container(
            padding:
                const EdgeInsets.only(left: 2, right: 2, top: 5, bottom: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1, color: Colors.white)),
            width: 250,
            height: 200,
            child: RawKeyboardListener(
                focusNode: FocusNode(),
                onKey: (keyEvent) {
                  if (keyEvent.logicalKey == LogicalKeyboardKey.backspace) {
                    if (!_textChanged &&
                        ts.translatorDataState.tags.isNotEmpty &&
                        tec.text.isEmpty) {
                      setState(() {
                        var t = ref.read(translatorProvider.notifier);
                        tec.text =
                            t.removeTag(ts.translatorDataState.tags.last);
                      });
                      FocusScope.of(context).requestFocus(tagFocus);
                      tec.selection = TextSelection.fromPosition(
                          TextPosition(offset: tec.text.length));
                    }
                  } else if (keyEvent.logicalKey == LogicalKeyboardKey.comma) {
                    createOne();
                  }
                  _textChanged = false;
                },
                child: SingleChildScrollView(
                  child: Wrap(
                      children: ts.translatorDataState.tags
                              .map((e) => tagWidget(e))
                              .toList() +
                          [writingArea]),
                )),
          ),
        ),
      ],
    );
  }

//
  Widget tagWidget(String tag) {
    var ts = ref.watch(translatorProvider);
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.grey.shade600, borderRadius: BorderRadius.circular(30)),
      padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(tag, style: const TextStyle(color: Colors.white)),
          GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              var t = ref.read(translatorProvider.notifier);
              t.removeTag(tag);
              FocusScope.of(context).requestFocus(tagFocus);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 5, right: 2),
              child: Icon(
                Icons.cancel_outlined,
                color: Colors.white.withOpacity(.5),
                size: 20,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget get writingArea {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 8),
      child: SizedBox(
        width: 80,
        child: IgnorePointer(
          ignoring: true,
          child: TextField(
            controller: tec,
            showCursor: false,
            focusNode: tagFocus,
            style: const TextStyle(color: Colors.white),
            onSubmitted: (str) {
              createOne();
            },
            onChanged: (str) {
              _textChanged = true;
            },
            decoration: InputDecoration(
                isDense: true,
                border: InputBorder.none,
                hintText: 'Input tag',
                hintStyle: TextStyle(color: Colors.grey.shade700)),
          ),
        ),
      ),
    );
  }

  void createOne() {
    var ts = ref.watch(translatorProvider);
    var str = tec.text.trim();
    if (str == ',') {
      tec.text = '';
    } else if (str.isNotEmpty) {
      var tags = str.split(',');
      for (var tag in tags) {
        if (!ts.translatorDataState.tags.contains(tag.trim())) {
          var t = ref.read(translatorProvider.notifier);
          t.addTag(tag.trim());
        }
      }
      tec.text = '';
    }
    FocusScope.of(context).requestFocus(tagFocus);
  }
}
