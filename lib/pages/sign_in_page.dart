import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syntop_app/navigation/layout_navbar.dart';
import 'package:syntop_app/pages/landing_page.dart';
import 'package:syntop_app/pages/sign_up_page.dart';
import 'package:syntop_app/themes/themes.dart';
import 'package:get/get.dart';
import 'package:syntop_app/controllers/auth_controller.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final AUTHCONTROLLER
    final authH = Get.put(AuthController());

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
                  "Email",
                  style: blackTextStyle.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 23,
                ),
                TextFormField(
                  controller: authH.email,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: whiteColor,
                      hintText: "Masukkan Email",
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
                  controller: authH.password,
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
                  child: InkWell(
                    onTap: () {
                      authH.login();
                    },
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: primaryColor),
                      child: Center(
                        child: Obx(
                          () => authH.isLoading == true
                              ? CircularProgressIndicator(
                                  color: whiteColor,
                                )
                              : Text(
                                  "Masuk",
                                  style: whiteTextStyle.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 200, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Belum Punya Akun ?",
                  style: greyTextStyle,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUpPage()));
                  },
                  child: Text(
                    " Daftar",
                    style: primaryTextStyle,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
