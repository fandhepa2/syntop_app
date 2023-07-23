import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:syntop_app/config/config.dart';
import 'package:syntop_app/models/product_model.dart';
import 'package:syntop_app/pages/produk_detail_page.dart';

import '../themes/themes.dart';

class ProdukPopulerWidget extends StatelessWidget {
  const ProdukPopulerWidget({super.key, required this.productModel});

  // Untuk menerima data
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProdukDetailPage(
                productModel: productModel,
              ),
            ));
      },
      child: Container(
        width: 180,
        // width: MediaQuery.of(context).size.width * 0.42,
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
              // ubah jadi image.network
              child: Image.network(
                productModel.gambar,
                width: 150,
                height: 130,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              productModel.namaProduct,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: blackTextStyle.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              // ambil function config untuk converrt harga
              Config.convertToIdr(int.parse(productModel.harga), 0),
              style: blackTextStyle.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              children: [
                RatingBar.builder(
                  itemSize: 20,
                  initialRating: double.parse(productModel.rating),
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
                  " " + productModel.rating,
                  // ratting default 4.7 yang telah di setting di database

                  style: greyTextStyle,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
