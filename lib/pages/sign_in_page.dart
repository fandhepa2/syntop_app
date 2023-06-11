import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syntop_app/navigation/layout_navbar.dart';
import 'package:syntop_app/pages/landing_page.dart';
import 'package:syntop_app/themes/themes.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(
        children: [
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15),
            child: Column(
              children: [
                Text(
                  "Welcome Back",
                  style: primaryTextStyle.copyWith(
                      fontSize: 24, fontWeight: FontWeight.w600),
                ),
                Text(
                  "Masuk untuk mulai eksplore dan belanja",
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

          // Form Input
          Container(
            margin: EdgeInsets.only(top: 22, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .start, // meratakan text di kiri secara horizontal
              // untuk vertical menggunakan main axisalignment
              children: [
                Text(
                  "Username",
                  style: blackTextStyle.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 23,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: whiteColor,
                      hintText: "Masukkan Username",
                      hintStyle: greyTextStyle,
                      border: InputBorder.none),
                ),
                SizedBox(
                  height: 23,
                ),
                Text(
                  "Masukkan Password",
                  style: blackTextStyle.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 23,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      suffix: Icon(
                        Icons.visibility_off,
                        color: greyColor,
                      ),
                      filled: true,
                      fillColor: whiteColor,
                      hintText: "Masukkan Password",
                      hintStyle: greyTextStyle,
                      border: InputBorder.none),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "lupa Password ?",
                    style: primaryTextStyle,
                  ),
                ),
                SizedBox(
                  height: 29,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => LayoutNavigationBar()));
                  },
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: primaryColor),
                    child: Center(
                      child: Text(
                        "Masuk",
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

          Container(
            margin: EdgeInsets.only(top: 230, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Belum Punya Akun ?",
                  style: greyTextStyle,
                ),
                Text(
                  " Daftar",
                  style: primaryTextStyle,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
