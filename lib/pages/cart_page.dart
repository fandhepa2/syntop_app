import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syntop_app/Widgets/diproses_widgets.dart';
import 'package:syntop_app/Widgets/keranjang_widgets.dart';
import 'package:syntop_app/Widgets/selesai_widgets.dart';
import 'package:syntop_app/themes/themes.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          bottom: TabBar(
              unselectedLabelColor: blackColor,
              labelColor: blackColor,
              indicatorColor: primaryColor,
              tabs: [
                Tab(
                  text: 'Keranjang',
                ),
                Tab(
                  text: 'Diproses',
                ),
                Tab(
                  text: 'Selesai',
                )
              ]),
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text("Pesananmu",
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
        body: Container(
          margin: EdgeInsets.only(top: 10),
          color: whiteColor,
          child: TabBarView(children: [
            KeranjangWidgets(),
            DiprosesWidgets(),
            SelesaiWidget()
          ]),
        ),
      ),
    );
  }
}
