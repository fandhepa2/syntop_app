import 'package:flutter/material.dart';
import 'package:syntop_app/pages/Checkout_page.dart';
import 'package:syntop_app/themes/themes.dart';

class ShopNowPage extends StatefulWidget {
  const ShopNowPage({super.key});

  @override
  State<ShopNowPage> createState() => _ShopNowPageState();
}

class _ShopNowPageState extends State<ShopNowPage> {
  int _qty = 1;

  // Untuk isian dropdown/ Combo box
  String metodePembayaran = "Transfer Bank";
  String metodePengiriman = "Pengiriman Instan";

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text("Beli Sekarang",
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
      body: ListView(
        children: [
          // section 1
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 29, right: 20, left: 20, bottom: 60),
            decoration: BoxDecoration(color: whiteColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/laptop1.png",
                      width: 90,
                      height: 90,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lenovo ThinkPad T570s",
                          style: blackTextStyle,
                        ),
                        Text(
                          "Lenovo ThinkPad T570s",
                          style: greyTextStyle,
                        ),
                        Row(
                          children: [
                            IconButton(
                                onPressed: minusQty,
                                icon: Icon(
                                  Icons.remove_circle_outline,
                                  color: Colors.black,
                                )),
                            Text(_qty.toString(),
                                style: blackTextStyle.copyWith(fontSize: 15)),
                            IconButton(
                                onPressed: addQty,
                                icon: Icon(
                                  Icons.add_circle_outline,
                                  color: Colors.black,
                                )),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      "1 Item",
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Catatan",
                  style: blackTextStyle,
                ),
                TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 4,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greyColor, width: 2.0)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greyColor, width: 3)),
                      fillColor: whiteColor,
                      hintStyle: TextStyle(fontSize: 15),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(15)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Metode Pembayaran",
                  style: blackTextStyle,
                ),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greyColor, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: greyColor,
                      ),
                    ),
                  ),
                  value: metodePembayaran,
                  items: <String>['Transfer Bank', 'COD']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: blackTextStyle,
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      metodePembayaran = newValue!;
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Pilih Pengiriman",
                  style: blackTextStyle,
                ),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greyColor, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: greyColor,
                      ),
                    ),
                  ),
                  value: metodePengiriman,
                  items: <String>['Pengiriman Instan', 'Regular']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: blackTextStyle,
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      metodePengiriman = newValue!;
                    });
                  },
                ),
              ],
            ),
          ),

          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(
              top: 29,
              right: 20,
              left: 20,
              bottom: 15,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Informasi Pembayaran",
                  style: blackTextStyle.copyWith(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Nama Lengkap",
                  style: blackTextStyle,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greyColor, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: greyColor,
                      ),
                    ),
                    fillColor: whiteColor,
                    hintStyle: TextStyle(fontSize: 15),
                    border: InputBorder.none,
                    hintText: "Masukkan Nama Lengkap",
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "No Telepon",
                  style: blackTextStyle,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greyColor, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: greyColor,
                      ),
                    ),
                    fillColor: whiteColor,
                    hintStyle: TextStyle(fontSize: 15),
                    border: InputBorder.none,
                    hintText: "Masukkan No Telepon",
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Alamat Pengiriman",
                  style: blackTextStyle,
                ),
                TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 4,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greyColor, width: 2.0)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greyColor, width: 3)),
                      fillColor: whiteColor,
                      hintStyle: TextStyle(fontSize: 15),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(15)),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Kota",
                  style: blackTextStyle,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greyColor, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: greyColor,
                      ),
                    ),
                    fillColor: whiteColor,
                    hintStyle: TextStyle(fontSize: 15),
                    border: InputBorder.none,
                    hintText: "Masukkan Nama Kota",
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 30,
          )
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top: 20),
        width: MediaQuery.of(context).size.width,
        height: 110,
        decoration: BoxDecoration(
          color: whiteColor,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Total : ",
                    style: blackTextStyle.copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Rp 18.000.000 : ",
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CheckoutPage()));
                },
                child: Container(
                  width: 150,
                  height: 45,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      "Bayar Sekarang",
                      style: whiteTextStyle,
                    ),
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
