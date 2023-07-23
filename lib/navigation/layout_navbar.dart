import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syntop_app/pages/cart_page.dart';
import 'package:syntop_app/pages/landing_page.dart';
import 'package:syntop_app/pages/order_page.dart';
import 'package:syntop_app/pages/profile_page.dart';
import 'package:syntop_app/pages/search_page.dart';
import 'package:syntop_app/themes/themes.dart';

class LayoutNavigationBar extends StatefulWidget {
  @override
  _LayoutNavigationBarState createState() => _LayoutNavigationBarState();
}

class _LayoutNavigationBarState extends State<LayoutNavigationBar> {
  int _currentIndex = 0;
  static List<Widget> _children = [
    LandingPage(),
    SearchPage(),
    OrderPage(),
    ProfilePage(),
  ];

  // fUNCTION MERUBAH POSISI INDEX SAAT MENU DI KLIK
  // int index merupakan parameter bertipe integer
  // set state untuk merefresh

  void onBarTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: primaryColor,
        unselectedItemColor: greyColor,

        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Cari'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
              ),
              label: 'Keranjang'),
          BottomNavigationBarItem(
            backgroundColor: bgColor,
            icon: Icon(
              Icons.account_circle_sharp,
            ),
            label: 'Profil',
          ),
        ],
        onTap: onBarTapped,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed, // agar tidak berubah atau bergerak
      ),
    );
  }
}
