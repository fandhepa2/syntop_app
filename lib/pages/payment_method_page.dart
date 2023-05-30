import 'package:flutter/material.dart';
import 'package:syntop_app/pages/add_address_page.dart';
import 'package:syntop_app/pages/add_payment_page.dart';
import 'package:syntop_app/themes/themes.dart';

class PaymentmethodPage extends StatelessWidget {
  const PaymentmethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text(
          "Metode Pembayaran",
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
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddPaymentPage()));
            },
            child: Container(
              margin: EdgeInsets.only(right: 20, left: 20, top: 22),
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: primaryColor),
              child: Center(
                child: Text(
                  "+ Metode Pembayaran",
                  style: whiteTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 27),
            child: Text(
              "Metode Pembayaran Tersimpan",
              style: blackTextStyle.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: whiteColor),
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
              right: 20,
              left: 20,
              top: 14,
            ),
            padding: EdgeInsets.only(
              left: 10,
              right: 11,
              top: 14,
              bottom: 13,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "Hapus",
                    style: primaryTextStyle,
                  ),
                ),
                Text("Mandiri Mobile Banking",
                    style:
                        blackTextStyle.copyWith(fontWeight: FontWeight.bold)),
                Text("No. Rekening", style: blackTextStyle),
                Text("01234567890-a.n.Adam Jhonson",
                    style:
                        blackTextStyle.copyWith(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          SizedBox(
            height: 19,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: whiteColor),
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
              right: 20,
              left: 20,
              top: 14,
            ),
            padding: EdgeInsets.only(
              left: 10,
              right: 11,
              top: 14,
              bottom: 13,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "Hapus",
                    style: primaryTextStyle,
                  ),
                ),
                Text("Gopay",
                    style:
                        blackTextStyle.copyWith(fontWeight: FontWeight.bold)),
                Text("Nomor Terhubung", style: blackTextStyle),
                Text("01234567890",
                    style:
                        blackTextStyle.copyWith(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
