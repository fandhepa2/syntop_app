import 'dart:async';

import 'package:flutter/material.dart';
import 'package:syntop_app/pages/on_board_page.dart';
import 'package:syntop_app/themes/themes.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  openSplashScreen() async {
    // bisa di ganti beberapa detik sesuai keinginan
    Timer(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const OnBoardPage())));
  }

  // pushReplace

  @override
  void initState() {
    // TODO: implement initState
    openSplashScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 191,
              height: 51,
            ),
            Text(
              "Making Easy",
              textAlign: TextAlign.center,
              style: whiteTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
