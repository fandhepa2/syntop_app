import 'package:flutter/material.dart';
import 'package:syntop_app/themes/themes.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: Text(
          "Riwayat Transaksi",
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
          Container(
            color: bgColor,
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
                Spacer(),
                Column(
                  children: [
                    Text("Selesai", style: greenTextStyle.copyWith()),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
