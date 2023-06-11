import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syntop_app/pages/detail_transaction_page.dart';
import 'package:syntop_app/pages/history_page.dart';
import 'package:syntop_app/pages/produk_detail_page.dart';
import 'package:syntop_app/pages/shop_now_page.dart';
import 'package:syntop_app/themes/themes.dart';

class ItemOrderWidget extends StatelessWidget {
  const ItemOrderWidget(
      {super.key,
      this.label = "",
      required this.namaProduct,
      required this.hargaProduct,
      required this.imgUrl});

  final String label;
  final String namaProduct;
  final String hargaProduct;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailTransaksiPage(
                      status: label,
                    )));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        child: ListTile(
          leading: Image.asset(imgUrl),
          title: Text(namaProduct),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    hargaProduct,
                    style: greyTextStyle,
                  ),
                  Spacer(),
                  Text(label,
                      style: label == 'On Shipment'
                          ? yellowTextStyle
                          : label == "Selesai"
                              ? greenTextStyle
                              : blackTextStyle),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
