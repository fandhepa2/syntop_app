import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syntop_app/pages/bukti_bayar_page.dart';
import 'package:syntop_app/themes/themes.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text(
          "Checkout",
          style: blackTextStyle.copyWith(
              fontSize: 18, fontWeight: FontWeight.bold),
        ),
        backgroundColor: whiteColor,
        elevation: 0, //mengatur bayangan
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
          SizedBox(
            height: 20,
          ),
          Container(
            color: whiteColor,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(
              top: 29,
              right: 20,
              left: 20,
            ),
            child: Text(
              "*Ini adalah halaman informasi sebelum menekan\ntombol bayar pastikan data sudah benar",
              style: primaryTextStyle.copyWith(fontSize: 12),
            ),
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
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 110,
        decoration: BoxDecoration(
          color: whiteColor,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Total : ",
                    style: blackTextStyle.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Rp. 18.050.000",
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BuktiBayarPage()));
                },
                child: Container(
                  width: 150,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: primaryColor),
                  child: Center(
                    child: Text(
                      "Bayar Sekarang",
                      style: whiteTextStyle,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
