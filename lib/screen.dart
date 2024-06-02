import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_translation/provider/screen_provider/enum/screen_type.dart';
import 'package:youtube_translation/provider/screen_provider/screen_provider.dart';
import 'package:youtube_translation/screens/share_screen/share_screen.dart';
import 'package:youtube_translation/screens/translator_screen/translator_screen.dart';
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
    if(!ss.isLogin){
      return const LoginScreen();
    }
    return const TranslatorScreen();
    var screenType =
        ref.watch(screenProvider.select((selector) => selector.screenType));
    switch (screenType) {
      case ScreenType.translator:

      case ScreenType.share:
        return const ShareScreen();
    }
  }
}
