import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:matcher/matcher.dart';
import 'package:syntop_app/themes/themes.dart';

import '../Widgets/produk_populer_widgets.dart';

class SearchResultPage extends StatefulWidget {
  const SearchResultPage({super.key, required this.keyword});

  final String keyword;

  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pencarian : ${widget.keyword}",
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
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            top: 10,
            left: 20,
            right: 20,
            bottom: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hasil Pencarian produk : ${widget.keyword}",
                style: greyTextStyle.copyWith(
                    fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(child: ProdukPopulerWidget()),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(child: ProdukPopulerWidget()),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(child: ProdukPopulerWidget()),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(child: ProdukPopulerWidget()),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(child: ProdukPopulerWidget()),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(child: ProdukPopulerWidget()),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(child: ProdukPopulerWidget()),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(child: ProdukPopulerWidget()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
