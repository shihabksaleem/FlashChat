import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'Splash_Screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // void initState() {
  //   Timer(
  //     Duration(seconds: 3),
  //     () {
  //       Navigator.pushReplacementNamed(context, WelcomeScreen.id);
  //     },
  //   );
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        backgroundColor: Color(0xFFfbe4ec),
        splashIconSize: MediaQuery.of(context).size.height,
        animationDuration: Duration(milliseconds: 1500),
        splashTransition: SplashTransition.fadeTransition,
        nextScreen: WelcomeScreen(),
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/login.png',
              scale: 3,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .1),
            Image.asset(
              'images/flashAppLogo.png',
              scale: 5,
            ),
          ],
        ),
      ),
    );
  }
}
