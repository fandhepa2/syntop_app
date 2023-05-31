import 'package:flutter/material.dart';
import 'package:syntop_app/themes/themes.dart';

class KeranjangWidgets extends StatelessWidget {
  const KeranjangWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: whiteColor,
              padding: EdgeInsets.only(
                top: 29,
                right: 20,
                left: 20,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/laptop1.png",
                    width: 84,
                    // height: 84,
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lenovo Thinkpad T570s",
                        style: blackTextStyle.copyWith(fontSize: 12),
                      ),
                      Text(
                        "Rp 18.000.000",
                        style: greyTextStyle.copyWith(fontSize: 12),
                      ),
                      Text(
                        "1 Item",
                        style: greyTextStyle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Selesai", style: greenTextStyle.copyWith()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
