import 'package:flutter/material.dart';
import 'package:syntop_app/themes/themes.dart';

class AddAddressPage extends StatelessWidget {
  const AddAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tambahkan Alamat",
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
                Text("Kelurahan",
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
                    hintText: "Nama Kelurahan",
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text("Kecamatan",
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
                    hintText: "Nama Kecamatan",
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text("Kota",
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
                    hintText: "Nama Kota",
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text("Alamat Lengkap",
                    style:
                        blackTextStyle.copyWith(fontWeight: FontWeight.bold)),
                TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 4,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greyColor, width: 1.0)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greyColor, width: 3)),
                      fillColor: whiteColor,
                      hintStyle: TextStyle(fontSize: 15),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(15)),
                ),
                SizedBox(
                  height: 16,
                ),
                Text("Nomor Rumah",
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
                    hintText: "Nomor Rumah",
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
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
