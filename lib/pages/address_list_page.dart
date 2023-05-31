import 'package:flutter/material.dart';
import 'package:syntop_app/pages/add_address_page.dart';
import 'package:syntop_app/themes/themes.dart';

class AddressListPage extends StatelessWidget {
  const AddressListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bgColor,
        title: Text("Daftar Alamat",
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddAddressPage(),
                  ));
            },
            child: Container(
              margin: EdgeInsets.only(right: 20, left: 20, top: 38),
              padding:
                  EdgeInsets.only(left: 10, top: 14, bottom: 13, right: 170),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: whiteColor),
              child: Text(
                "+ Tambahkan Alamat",
                style: blackTextStyle.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20, left: 20, top: 14),
            padding: EdgeInsets.only(left: 10, top: 14, bottom: 13, right: 170),
            child: Text(
              "Alamat Tersimpan",
              style: blackTextStyle.copyWith(
                fontWeight: FontWeight.bold,
              ),
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
                    "Edit",
                    style: primaryTextStyle,
                  ),
                ),
                Text("Kantor",
                    style:
                        blackTextStyle.copyWith(fontWeight: FontWeight.bold)),
                Text(
                    "Jalan Rajawali nomor 1228, Ilir Timur II Ruko\nRajawali VillageKota Palembang",
                    style: blackTextStyle),
              ],
            ),
          ),
          SizedBox(
            height: 14,
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
                    "Edit",
                    style: primaryTextStyle,
                  ),
                ),
                Text("Rumah",
                    style:
                        blackTextStyle.copyWith(fontWeight: FontWeight.bold)),
                Text(
                    "Jalan Rajawali nomor 1228, Ilir Timur II Ruko\nRajawali VillageKota Palembang",
                    style: blackTextStyle),
              ],
            ),
          ),
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
            "Simpan",
            style: whiteTextStyle.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
