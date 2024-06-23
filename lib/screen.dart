import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_translation/provider/screen_provider/enum/screen_type.dart';
import 'package:youtube_translation/provider/screen_provider/screen_provider.dart';
import 'package:youtube_translation/screens/translator_screen/translator_screen.dart';
import 'package:youtube_translation/screens/util_screen/util_screen.dart';
import 'package:youtube_translation/widgets/login_screen.dart';

class Screen extends ConsumerStatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  ConsumerState<Screen> createState() => _ScreenState();
}

class _ScreenState extends ConsumerState<Screen> {
  @override
  void initState() {
    var t = ref.read(screenProvider.notifier);
    t.loginCheck();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var ss = ref.watch(screenProvider);
    if (!ss.isLogin) {
      return const LoginScreen();
    }
    late Widget screen;
    var screenType =
        ref.watch(screenProvider.select((selector) => selector.screenType));
    switch (screenType) {
      case ScreenType.translator:
        screen = const TranslatorScreen();
        break;
      case ScreenType.util:
        screen = const UtilScreen();
        break;
    }
    return Stack(
      children: [screen, screenSelect],
    );
  }

  Widget get screenSelect {
    var s = ref.read(screenProvider.notifier);
    var type = ref.watch(screenProvider).screenType;
    return Material(
      color: Colors.transparent,
      child: Container(
        margin: const EdgeInsets.only(top: 26, left: 26),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 1, color: Colors.white)),
        child: IntrinsicHeight(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  s.setScreenType = ScreenType.translator;
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 7, 15, 7),
                  child: Text('Upload',
                      style: TextStyle(
                          color: type == ScreenType.translator
                              ? Colors.white
                              : Colors.grey.shade700,
                          fontSize: 15)),
                ),
              ),
              Container(width: 1, color: Colors.white),
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  s.setScreenType = ScreenType.util;
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(27, 7, 27, 7),
                  child: Text(
                    'Util',
                    style: TextStyle(
                        color: type == ScreenType.util
                            ? Colors.white
                            : Colors.grey.shade700,
                        fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
