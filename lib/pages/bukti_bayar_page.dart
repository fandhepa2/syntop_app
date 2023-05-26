import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syntop_app/pages/success.page.dart';
import 'package:syntop_app/themes/themes.dart';

class BuktiBayarPage extends StatelessWidget {
  const BuktiBayarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteColor,
        title: Text("Upload Bukti Bayar",
            style: blackTextStyle.copyWith(
                fontWeight: FontWeight.w600, fontSize: 18)),
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
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 14, right: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/mandiri.png",
                    width: 193,
                    height: 56,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Mandiri Virtual Account",
                    style: greyTextStyle.copyWith(fontSize: 12),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "900100200300",
                    style: blackTextStyle.copyWith(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "a.n.Syntop Laptopindo",
                    style: greyTextStyle.copyWith(fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Container(
            color: whiteColor,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(right: 20, left: 20, top: 13),
            child: Center(
              child: Column(
                children: [
                  IconButton(
                    onPressed: null,
                    icon: Icon(Icons.image),
                    alignment: Alignment.center,
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SuccessPage()));
                    },
                    child: Container(
                      width: 150,
                      height: 45,
                      margin: EdgeInsets.only(
                        bottom: 13,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: primaryColor),
                      child: Center(
                        child: Text(
                          "Upload Bukti Bayar",
                          style: whiteTextStyle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 21,
          ),
          Container(
            color: whiteColor,
            padding: EdgeInsets.only(
              top: 29,
              right: 20,
              left: 20,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/laptop1.png",
                  width: 84,
                  // height: 84,
                ),
                SizedBox(
                  width: 18,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lenovo Thinkpad T570s",
                      style: blackTextStyle.copyWith(fontSize: 12),
                    ),
                    Text(
                      "Rp 18.000.000",
                      style: greyTextStyle.copyWith(fontSize: 12),
                    ),
                    Text(
                      "1 Item",
                      style: greyTextStyle.copyWith(fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: whiteColor,
            padding: EdgeInsets.only(top: 29, right: 20, left: 20, bottom: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Detail Transaksi",
                  style: blackTextStyle,
                ),
                Row(
                  children: [
                    Text(
                      "Lenovo Thinkpad T570S",
                      style: greyTextStyle,
                    ),
                    Spacer(),
                    Text(
                      "Rp 18.000.000",
                      style: blackTextStyle,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Pengiriman Instan",
                      style: greyTextStyle,
                    ),
                    Spacer(),
                    Text(
                      "Rp 50.000",
                      style: blackTextStyle,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Total Biaya",
                      style: greyTextStyle,
                    ),
                    Spacer(),
                    Text(
                      "Rp 18.050.000",
                      style: primaryTextStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: whiteColor,
            padding: EdgeInsets.only(top: 29, right: 20, left: 20, bottom: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dikirim ke",
                  style: blackTextStyle,
                ),
                Row(
                  children: [
                    Text(
                      "Nama Penerima",
                      style: greyTextStyle,
                    ),
                    Spacer(),
                    Text(
                      "Jhon",
                      style: blackTextStyle,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "No Telepon",
                      style: greyTextStyle,
                    ),
                    Spacer(),
                    Text(
                      "0812 - 3456 - 7890",
                      style: blackTextStyle,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Alamat Pengiriman",
                      style: greyTextStyle,
                    ),
                    Spacer(),
                    Text(
                      "Jalan Lurus Sampai Tujuan",
                      style: blackTextStyle,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Kota",
                      style: greyTextStyle,
                    ),
                    Spacer(),
                    Text(
                      "Kota Palembang",
                      style: blackTextStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
