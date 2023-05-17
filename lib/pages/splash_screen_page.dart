import 'package:flutter/material.dart';
import 'package:syntop_app/themes/themes.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

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
