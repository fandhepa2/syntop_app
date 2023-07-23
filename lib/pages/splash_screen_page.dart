import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sp_util/sp_util.dart';
import 'package:syntop_app/navigation/layout_navbar.dart';
import 'package:syntop_app/pages/on_board_page.dart';
import 'package:syntop_app/themes/themes.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  // openSplashScreen() async {
  //     Timer(
  //       const Duration(seconds: 2),
  //       () => Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => SpUtil.getString("email_user") == ""
  //               ? const OnBoardPage()
  //               : LayoutNavigationBar(),
  //         ),
  //       ),
  //     );
  //
  //   }
  // }

  // // pushReplace

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   openSplashScreen();
  //   super.initState();
  // }

  @override
  void initState() {
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SpUtil.getString("email_user") == ""
              ? const OnBoardPage()
              : LayoutNavigationBar(),
        ),
      ),
    );
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
