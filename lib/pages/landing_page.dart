import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syntop_app/Widgets/produk_populer_widgets.dart';
import 'package:syntop_app/models/product_model.dart';
import 'package:syntop_app/services/product_services.dart';

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
              child: FutureBuilder<List<ProductModel>>(
                future: ProductServices.getProductNew(),
                // snapshot untuk mengambil data
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.41),
                      child: Center(
                        child: CircularProgressIndicator(
                          color: primaryColor,
                        ),
                      ),
                    );
                  } else if (snapshot.hasData) {
                    return Row(
                      // Bungkus dengan FutureBuilder
                      children: [
                        //  tambahkan perulangan
                        ...snapshot.data!.map((dataProduct) {
                          // mengambil index dari perulangan map untuk memberi jarak
                          var index = snapshot.data!.indexOf(dataProduct);
                          return Container(
                            margin: EdgeInsets.only(left: index > 0 ? 12 : 0),
                            child: ProdukPopulerWidget(
                              productModel: dataProduct,
                            ),
                          );
                        }),
                        // ProdukPopulerWidget(),
                      ],
                    );
                  }
                  return Container();
                },
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

          FutureBuilder<List<ProductModel>>(
              future: ProductServices.getProductRecomdended(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Container(
                    child: Center(
                      child: CircularProgressIndicator(
                        color: primaryColor,
                      ),
                    ),
                  );
                } else if (snapshot.hasData) {
                  // tampilan datanya dengan widget grid view
                  return GridView.count(
                    // tambahkan shrinkWrap: true dan physics: const NeverScrollableScrollPhysics()
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    // tambahkan  childAspectRatio: untuk membuat perbandingan lebar dan tinggi
                    childAspectRatio: 4 / 5,
                    children: [
                      ...snapshot.data!.map((dataProduct) {
                        return ProdukPopulerWidget(productModel: dataProduct);
                      })
                    ],
                  );
                }

                return Container();
              }),

          // Container(
          //   margin: EdgeInsets.only(
          //     top: 10,
          //     left: 20,
          //     right: 20,
          //     bottom: 20,
          //   ),
          //   child: Column(
          //     children: [
          //       Row(
          //         children: [
          //           Expanded(child: ProdukPopulerWidget()),
          //           SizedBox(
          //             width: 12,
          //           ),
          //           Expanded(child: ProdukPopulerWidget()),
          //         ],
          //       ),
          //       SizedBox(
          //         height: 12,
          //       ),
          //       Row(
          //         children: [
          //           Expanded(child: ProdukPopulerWidget()),
          //           SizedBox(
          //             width: 12,
          //           ),
          //           Expanded(child: ProdukPopulerWidget()),
          //         ],
          //       ),
          //       SizedBox(
          //         height: 12,
          //       ),
          //       Row(
          //         children: [
          //           Expanded(child: ProdukPopulerWidget()),
          //           SizedBox(
          //             width: 12,
          //           ),
          //           Expanded(child: ProdukPopulerWidget()),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   // type: BottomNavigationBarType.shifting,
      //   currentIndex: 0,
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
      //           color: primaryColor,
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
      //         color: blackColor,
      //       ),
      //       label: 'Profil',
      //     ),
      //   ],
      // ),
    );
  }
}
