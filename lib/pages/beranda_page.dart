import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syntop_app/themes/themes.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
              child: Image.asset("assets/img-promo.png"),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "Produk Popular",
                  textAlign: TextAlign.start,
                  style: blackTextStyle.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: whiteColor),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/laptop1.png"),
                          Text("Lenovo Thingkpad T470s",
                              textAlign: TextAlign.center,
                              style: blackTextStyle.copyWith(fontSize: 12)),
                          Text("Rp 18.000.000",
                              textAlign: TextAlign.left,
                              style: blackTextStyle.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 12)),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: yellowColor,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: yellowColor,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: yellowColor,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: yellowColor,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: greyColor,
                                size: 20,
                              ),
                              Text(
                                "4,0",
                                style: greyTextStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: whiteColor),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/laptop1.png"),
                          Text("Lenovo Thingkpad T470s",
                              textAlign: TextAlign.center,
                              style: blackTextStyle.copyWith(fontSize: 12)),
                          Text("Rp 18.000.000",
                              textAlign: TextAlign.left,
                              style: blackTextStyle.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 12)),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: yellowColor,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: yellowColor,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: yellowColor,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: yellowColor,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: greyColor,
                                size: 20,
                              ),
                              Text(
                                "4,0",
                                style: greyTextStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: whiteColor),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/laptop1.png"),
                          Text("Lenovo Thingkpad T470s",
                              textAlign: TextAlign.center,
                              style: blackTextStyle.copyWith(fontSize: 12)),
                          Text("Rp 18.000.000",
                              textAlign: TextAlign.left,
                              style: blackTextStyle.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 12)),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: yellowColor,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: yellowColor,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: yellowColor,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: yellowColor,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: greyColor,
                                size: 20,
                              ),
                              Text(
                                "4,0",
                                style: greyTextStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "Produk Rekomendasi",
                  textAlign: TextAlign.start,
                  style: blackTextStyle.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // showSelectedLabels: true,
        // selectedLabelStyle:
        //     TextStyle(overflow: TextOverflow.visible, color: Colors.black),
        // showUnselectedLabels: true,

        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              label: 'Beranda'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              label: 'Cari'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.grey,
              ),
              label: 'Keranjang'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_sharp,
              color: Colors.grey,
            ),
            label: 'Profil',
          ),
        ],
        // selectedLabelStyle: const TextStyle(
        //     overflow: TextOverflow.visible, fontSize: 10, color: Colors.black),
        // showSelectedLabels: true,
      ),
    );
  }
}
