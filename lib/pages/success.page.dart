import 'package:flutter/material.dart';

import 'package:syntop_app/pages/landing_page.dart';
import 'package:syntop_app/themes/themes.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo_success.png',
              width: 250,
              height: 250,
            ),
            Text(
              "Pesananmu\nterkonfirmasi",
              style: blackTextStyle.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Silahkan tunggu barangmu sampai di tujuan",
              style: blackTextStyle,
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LandingPage()));
              },
              child: Container(
                width: 150,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: primaryColor),
                child: Center(
                  child: Text(
                    "Kembali ke beranda",
                    style: whiteTextStyle.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
