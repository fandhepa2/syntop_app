import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syntop_app/Widgets/item_order.witget.dart';
import 'package:syntop_app/themes/themes.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage>
    with SingleTickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(
        vsync: this, length: 3); //LENGTH = TOTAL TAB YANG AKAN DIBUAT
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: Text(
          "Pesanamu",
          style: blackTextStyle.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: whiteColor,
        elevation: 0,
        bottom: TabBar(
          controller: controller,
          indicatorColor: primaryColor,
          labelColor: blackColor,
          labelStyle: blackTextStyle.copyWith(
            fontWeight: FontWeight.bold,
          ),
          tabs: const [
            Tab(
              text: "Keranjang",
            ),
            Tab(
              text: "Diproses",
            ),
            Tab(
              text: "Selesai",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          Keranjang(),
          Proses(),
          Selesai(),
        ],
      ),
    );
  }
}

// class-class utk tampilan tabnya
class Keranjang extends StatelessWidget {
  const Keranjang({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ListView(
        children: [
          ItemOrderWidget(
            namaProduct: "HP 142S002",
            hargaProduct: "Rp. 10.000.000",
            imgUrl: "assets/laptop3.png",
          ),
          ItemOrderWidget(
            namaProduct: "HP IKL001",
            hargaProduct: "Rp. 7.000.000",
            imgUrl: "assets/laptop4.png",
          ),
        ],
      ),
    );
  }
}

class Proses extends StatelessWidget {
  const Proses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ListView(
        children: [
          ItemOrderWidget(
            namaProduct: "Lenovo Thinkpad T570s",
            label: "On Shipment",
            hargaProduct: "Rp. 18.000.000",
            imgUrl: "assets/laptop1.png",
          ),
          ItemOrderWidget(
            namaProduct: "Asus ROG F50",
            label: "On Shipment",
            hargaProduct: "Rp. 25.000.000",
            imgUrl: "assets/laptop2.png",
          ),
        ],
      ),
    );
  }
}

class Selesai extends StatelessWidget {
  const Selesai({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ListView(
        children: [
          ItemOrderWidget(
            namaProduct: "Macbook Pro M2",
            label: "Selesai",
            hargaProduct: "Rp. 30.000.000",
            imgUrl: "assets/laptop4.png",
          ),
        ],
      ),
    );
  }
}
