import 'package:flutter/material.dart';
import 'package:megasplash/utils/font_style.dart';
import 'package:megasplash/widget/login.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const MegaSplash());
}

class MegaSplash extends StatelessWidget {
  const MegaSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MegaSplash",
      debugShowCheckedModeBanner: false,
      home: Hero(
        tag:"logo",
        child: AnimatedSplashScreen(
          splash: Image.asset('assets/images/megasplash.png',
            fit:BoxFit.fill,
          ),
          nextScreen: const Scaffold(body: loginPage()),
          splashTransition: SplashTransition.scaleTransition,
          backgroundColor: Styles.bgColor,
          duration: 2000,),
      )
    );
  }
}
