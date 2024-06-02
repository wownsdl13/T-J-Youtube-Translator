import 'package:flutter/material.dart';
import 'package:youtube_translation/provider/initialize_provider/initialize_provider.dart';
import 'package:youtube_translation/screen.dart';
import 'package:youtube_translation/screens/translator_screen/translator_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: screen(ref),
    );
  }

  Widget screen(WidgetRef ref) {
    return ref.watch(initializeProvider).when(
        data: (_) => const Screen(),
        error: (_, __) => Container(),
        loading: () => Container());
  }
}
