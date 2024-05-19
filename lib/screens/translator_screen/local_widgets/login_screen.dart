import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:youtube_translation/screens/translator_screen/local_utils/translator_provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tp = context.watch<TranslatorProvider>();
    return Container(
      color: Colors.black.withOpacity(.8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 500,
            margin: const EdgeInsets.only(bottom: 60),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  child: Image.asset('assets/images/t_J_logo.png', fit: BoxFit.cover),
                ),
                Align(alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Alien Youtube uploader v.1.1.0',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.pacifico(color: Colors.white, fontSize: 40),
                    ),
                    const SizedBox(height: 35),
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        tp.login();
                      },
                      child: Container(
                        width: 230,
                        padding:
                        const EdgeInsets.fromLTRB(12, 8, 12, 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            border: Border.all(
                                width: 1, color: Colors.white)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/google.png',
                                width: 30, height: 30),
                            const SizedBox(width: 5),
                            Expanded(
                              child: Text(
                                'Sign in with Google',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.grey.shade900, fontSize: 16, fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                )
              ],
            ),
          ),
      ],),
    );
  }
}
