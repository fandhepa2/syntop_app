import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syntop_app/Widgets/produk_populer_widgets.dart';

import '../themes/themes.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(
        children: [
          // SECTION 1 BANNER
          Container(
            margin: EdgeInsets.only(
              top: 28,
              left: 20,
              right: 20,
            ),
            child: Image.asset("assets/img-promo.png"),
          ),

          // SECTION 2 Produk Populer
          Container(
            margin: EdgeInsets.only(
              top: 23,
              left: 20,
              right: 20,
            ),
            child: Text(
              "Produk Populer",
              style: blackTextStyle.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          // Banner Scroll
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: EdgeInsets.only(
                top: 10,
                left: 20,
                right: 20,
              ),
              child: Row(
                children: [
                  ProdukPopulerWidget(),
                  SizedBox(
                    width: 12,
                  ),
                  ProdukPopulerWidget(),
                  SizedBox(
                    width: 12,
                  ),
                  ProdukPopulerWidget(),
                  SizedBox(
                    width: 12,
                  ),
                  ProdukPopulerWidget(),
                  SizedBox(
                    width: 12,
                  ),
                  ProdukPopulerWidget(),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 30,
          ),

          Container(
            margin: EdgeInsets.only(
              top: 23,
              left: 20,
              right: 20,
            ),
            child: Text(
              "Produk Rekomendasi",
              style: blackTextStyle.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(
              top: 10,
              left: 20,
              right: 20,
              bottom: 20,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    ProdukPopulerWidget(),
                    SizedBox(
                      width: 12,
                    ),
                    ProdukPopulerWidget(),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    ProdukPopulerWidget(),
                    SizedBox(
                      width: 12,
                    ),
                    ProdukPopulerWidget(),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    ProdukPopulerWidget(),
                    SizedBox(
                      width: 12,
                    ),
                    ProdukPopulerWidget(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.shifting,
        currentIndex: 0,
        selectedItemColor: primaryColor,
        unselectedItemColor: blackColor,
        backgroundColor: bgColor,
        showSelectedLabels: true,
        // selectedLabelStyle:
        //     TextStyle(overflow: TextOverflow.visible, color: blackColor),
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: primaryColor,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: greyColor,
              ),
              label: 'Cari'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: greyColor,
              ),
              label: 'Keranjang'),
          BottomNavigationBarItem(
            backgroundColor: bgColor,
            icon: Icon(
              Icons.account_circle_sharp,
              color: blackColor,
            ),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
