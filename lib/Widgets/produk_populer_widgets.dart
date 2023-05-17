import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../themes/themes.dart';

class ProdukPopulerWidget extends StatelessWidget {
  const ProdukPopulerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.42,
      padding: EdgeInsets.all(11),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: whiteColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.asset(
              'assets/laptop1.png',
              width: 150,
              height: 130,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "Lenovo Thingkpad T470s",
            style: blackTextStyle.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "Rp 18.000.000",
            style: blackTextStyle.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            children: [
              RatingBar.builder(
                itemSize: 20,
                initialRating: 4.5,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              Text(
                "  4,5",
                style: greyTextStyle,
              )
            ],
          ),
        ],
      ),
    );
  }
}
