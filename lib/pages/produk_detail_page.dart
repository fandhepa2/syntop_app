import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:syntop_app/pages/shop_now_page.dart';
import 'package:syntop_app/themes/themes.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProdukDetailPage extends StatefulWidget {
  const ProdukDetailPage({super.key});

  @override
  State<ProdukDetailPage> createState() => _ProdukDetailPage();
}

final List<String> imgList = [
  'assets/laptop1.png',
  'assets/laptop2.png',
  'assets/laptop3.png',
  'assets/laptop4.png',
];

class _ProdukDetailPage extends State<ProdukDetailPage> {
  int _qty = 1;

  // Function tambah qty
  void addQty() {
    setState(() {
      _qty++;
    });
  }

// function minus qty
  void minusQty() {
    setState(() {
      if (_qty > 1) {
        _qty--;
      }
    });
  }

  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: Text(
                            'No. ${imgList.indexOf(item)} image',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: ListView(
        children: [
          //CAROUSELL

          Container(
            margin: EdgeInsets.only(
              right: 20,
              left: 20,
            ),
            child: CarouselSlider(
                items: imgList
                    .map((itemImage) => Container(
                          child: Image.asset(itemImage, fit: BoxFit.cover),
                        ))
                    .toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  // enlargeCenterPage: true,
                  // aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 12, right: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Lenovo Thingkad T57s",
                      style: blackTextStyle.copyWith(fontSize: 15),
                    ),
                    Spacer(),
                    Container(
                      child: IconButton(
                          onPressed: minusQty,
                          icon: Icon(
                            Icons.remove_circle_outline,
                            color: Colors.black,
                          )),
                    ),
                    Text(_qty.toString(),
                        style: blackTextStyle.copyWith(fontSize: 15)),
                    Container(
                      child: IconButton(
                          onPressed: addQty,
                          icon: Icon(
                            Icons.add_circle_outline,
                            color: Colors.black,
                          )),
                    ),
                  ],
                ),
                Text(
                  "Rp18.000.000",
                  style: blackTextStyle.copyWith(
                      fontWeight: FontWeight.bold, fontSize: 15),
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
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Deskripsi",
                  style: blackTextStyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Processor Up to 8th Gen Intel Core i5/i7 vPro\nFHD IPS Privacy Guard (1920 x 1080, 400nit)\nMemory Up to 32GB",
                  style: blackTextStyle,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Spesifikasi",
                  style: blackTextStyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Ram 8gb, SSD 256gb, Layar FHD",
                  style: blackTextStyle,
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        color: bgColor,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ShopNowPage()));
                },
                child: Container(
                  width: 150,
                  height: 45,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: primaryColor,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      "Beli Sekarang",
                      style: primaryTextStyle,
                    ),
                  ),
                ),
              ),
              Container(
                width: 150,
                height: 45,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text(
                    "+ Keranjang",
                    style: whiteTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
