import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syntop_app/themes/themes.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 6, left: 19),
            child: Text(
              "Cari Laptop\nImpianmu Sekarang",
              style: blackTextStyle.copyWith(
                  fontWeight: FontWeight.w600, fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
