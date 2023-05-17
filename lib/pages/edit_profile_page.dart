import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syntop_app/themes/themes.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 255, 255, 255),
        title: Text("Edit Profile",
            style: blackTextStyle.copyWith(
                fontWeight: FontWeight.w600, fontSize: 18)),
        leading: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.black,
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 10,
              right: 20,
              left: 20,
            ),
            child: Icon(
              Icons.account_circle,
              color: primaryColor,
              size: 100,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, right: 133, left: 133),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/pen.png"),
                SizedBox(
                  width: 10,
                ),
                Text("Ganti Foto",
                    style: primaryTextStyle.copyWith(fontSize: 12))
              ],
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
                  style: blackTextStyle.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
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
                  height: 20,
                ),
                Text(
                  "No Telepon",
                  style: blackTextStyle.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: whiteColor,
                      hintText: "Masukkan Telepon",
                      hintStyle: greyTextStyle,
                      border: InputBorder.none),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Email",
                  style: blackTextStyle.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
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
                  height: 20,
                ),
                Text(
                  "Masukkan Password",
                  style: blackTextStyle.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
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
                      "Simpan",
                      style: whiteTextStyle.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
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
