import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syntop_app/themes/themes.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(
        children: [
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.10),
            child: Column(
              children: [
                Text(
                  "Buat Akun",
                  style: primaryTextStyle.copyWith(
                      fontSize: 24, fontWeight: FontWeight.w600),
                ),
                Text(
                  "Temukan Laptop Impian mu di sini",
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 22, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .start, // meratakan text di kiri secara horizontal
                    // untuk vertical menggunakan main axisalignment
                    children: [
                      Text(
                        "Username",
                        style: blackTextStyle.copyWith(
                            fontWeight: FontWeight.bold),
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
                        "No Telepon",
                        style: blackTextStyle.copyWith(
                            fontWeight: FontWeight.bold),
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
                            hintText: "Masukkan Telepon",
                            hintStyle: greyTextStyle,
                            border: InputBorder.none),
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      Text(
                        "Email",
                        style: blackTextStyle.copyWith(
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      TextFormField(
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
                        "Buat Password",
                        style: blackTextStyle.copyWith(
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: whiteColor,
                            hintText: "Masukkan Password",
                            hintStyle: greyTextStyle,
                            border: InputBorder.none),
                      ),
                      SizedBox(
                        height: 29,
                      ),
                      Container(
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
                      Container(
                        margin: EdgeInsets.only(top: 100, left: 20, right: 20),
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
