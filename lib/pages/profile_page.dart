import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syntop_app/pages/address_list_page.dart';
import 'package:syntop_app/pages/edit_profile_page.dart';
import 'package:syntop_app/pages/history_page.dart';
import 'package:syntop_app/pages/payment_method_page.dart';
import 'package:syntop_app/themes/themes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(
        children: [
          //SECTION 1 ICON PROFILE
          Container(
            margin: EdgeInsets.only(
              top: 86,
              right: 130,
              left: 130,
            ),
            child: Icon(
              Icons.account_circle,
              color: primaryColor,
              size: 100,
            ),
          ),

          SizedBox(
            height: 10,
          ),

          // SECTION 2 NAME & EMAIL
          Container(
            margin: EdgeInsets.only(
              right: 110,
              left: 110,
              top: 10,
            ),
            child: Column(
              children: [
                Text("Adam Jhonson",
                    style: blackTextStyle.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w600)),
                Text("adam123@gmail.com",
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                    )),
              ],
            ),
          ),

          SizedBox(
            height: 48,
          ),

          // SECTION 3 EDIT PROFILE

          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: blackColor)),
            ),
            margin: EdgeInsets.only(right: 20, left: 20, top: 25),
            padding: EdgeInsets.only(bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EditProfilePage()));
                  },
                  child: Row(
                    children: [
                      Text("Edit Profil",
                          style: blackTextStyle.copyWith(
                              fontWeight: FontWeight.w600, fontSize: 12)),
                      Spacer(),
                      Transform.scale(
                        scaleX: -1,
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: blackColor,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          Spacer(),

          // SECTION 4 DAFTAR ALAMAT

          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: blackColor)),
            ),
            margin: EdgeInsets.only(right: 20, left: 20, top: 25),
            padding: EdgeInsets.only(bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddressListPage()));
                  },
                  child: Row(
                    children: [
                      Text("Daftar Alamat",
                          style: blackTextStyle.copyWith(
                              fontWeight: FontWeight.w600, fontSize: 12)),
                      Spacer(),
                      Transform.scale(
                        scaleX: -1,
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: blackColor,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          Spacer(),

          // SECTION 5 RIWAYAT TRANSAKSI

          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: blackColor)),
            ),
            margin: EdgeInsets.only(right: 20, left: 20, top: 25),
            padding: EdgeInsets.only(bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HistoryPage()));
                  },
                  child: Row(
                    children: [
                      Text("Riwayat Transaksi",
                          style: blackTextStyle.copyWith(
                              fontWeight: FontWeight.w600, fontSize: 12)),
                      Spacer(),
                      Transform.scale(
                        scaleX: -1,
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: blackColor,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          Spacer(),

          // SECTION 6 METODE PEMBAYARAN

          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: blackColor)),
            ),
            margin: EdgeInsets.only(right: 20, left: 20, top: 25),
            padding: EdgeInsets.only(bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaymentmethodPage()));
                  },
                  child: Row(
                    children: [
                      Text("Metode Pembayaran",
                          style: blackTextStyle.copyWith(
                              fontWeight: FontWeight.w600, fontSize: 12)),
                      Spacer(),
                      Transform.scale(
                        scaleX: -1,
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: blackColor,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   // type: BottomNavigationBarType.shifting,
      //   currentIndex: 3,
      //   selectedItemColor: primaryColor,
      //   unselectedItemColor: blackColor,
      //   backgroundColor: bgColor,
      //   showSelectedLabels: true,
      //   // selectedLabelStyle:
      //   //     TextStyle(overflow: TextOverflow.visible, color: blackColor),
      //   showUnselectedLabels: true,
      //   items: [
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.home,
      //           color: greyColor,
      //         ),
      //         label: 'Home'),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.search,
      //           color: greyColor,
      //         ),
      //         label: 'Cari'),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.shopping_cart,
      //           color: greyColor,
      //         ),
      //         label: 'Keranjang'),
      //     BottomNavigationBarItem(
      //       backgroundColor: bgColor,
      //       icon: Icon(
      //         Icons.account_circle_sharp,
      //         color: primaryColor,
      //       ),
      //       label: 'Profil',
      //     ),
      //   ],
      // ),
    );
  }
}
