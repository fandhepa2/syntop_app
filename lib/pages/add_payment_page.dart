import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syntop_app/themes/themes.dart';

class AddPaymentPage extends StatefulWidget {
  const AddPaymentPage({super.key});

  @override
  State<AddPaymentPage> createState() => _AddPaymentPageState();
}

class _AddPaymentPageState extends State<AddPaymentPage> {
  String metodePembayaran = "OVO";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: Text(
          "Tambahkan Metode Pembayaran",
          style: blackTextStyle.copyWith(
              fontSize: 18, fontWeight: FontWeight.bold),
        ),
        backgroundColor: whiteColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
                context); //untuk back sekali dan jika push untuk memilih mau kemana
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: blackColor,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(
              top: 29,
              right: 20,
              left: 20,
              bottom: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Pilih Metode Pembayaran",
                    style:
                        blackTextStyle.copyWith(fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 11,
                ),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greyColor, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: greyColor,
                      ),
                    ),
                  ),
                  value: metodePembayaran,
                  items: <String>['OVO', 'GOPAY', 'MANDIRI']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: blackTextStyle,
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      metodePembayaran = newValue!;
                    });
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                Text("Nama Pengguna",
                    style:
                        blackTextStyle.copyWith(fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 11,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greyColor, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: greyColor,
                      ),
                    ),
                    fillColor: whiteColor,
                    hintStyle: TextStyle(fontSize: 15),
                    border: InputBorder.none,
                    hintText: "Nama Pengguna",
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text("Nomor Rekening",
                    style:
                        blackTextStyle.copyWith(fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 11,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greyColor, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: greyColor,
                      ),
                    ),
                    fillColor: whiteColor,
                    hintStyle: TextStyle(fontSize: 15),
                    border: InputBorder.none,
                    hintText: "Nama Rekening",
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text("Nomor Kartu",
                    style:
                        blackTextStyle.copyWith(fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 11,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greyColor, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: greyColor,
                      ),
                    ),
                    fillColor: whiteColor,
                    hintStyle: TextStyle(fontSize: 15),
                    border: InputBorder.none,
                    hintText: "0000 - 0000 - 0000",
                    contentPadding: EdgeInsets.all(15),
                  ),
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 40),
        width: MediaQuery.of(context).size.width,
        height: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: primaryColor),
        child: Center(
          child: Text(
            "Tambahkan",
            style: whiteTextStyle.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
