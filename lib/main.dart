import 'package:flutter/material.dart';
import 'package:syntop_app/pages/beranda_page.dart';
import 'package:syntop_app/pages/edit_profile_page.dart';
import 'package:syntop_app/pages/landing_page.dart';
import 'package:syntop_app/pages/on_board_page.dart';
import 'package:syntop_app/pages/profile_page.dart';
import 'package:syntop_app/pages/sign_in_page.dart';
import 'package:syntop_app/pages/sign_up_page.dart';
import 'package:syntop_app/pages/splash_screen_page.dart';
import 'package:syntop_app/pages/success.page.dart';
import 'package:syntop_app/themes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: BerandaPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _pilihanbottom = 0;

  final List<Widget> _children = [
    BerandaPage(),
    ProfilePage(),
  ];

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      int _pilihanbottom = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: _children.elementAt(_pilihanbottom),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        // selectedLabelStyle:
        //     TextStyle(overflow: TextOverflow.visible, color: Colors.black),
        // showUnselectedLabels: true,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              label: 'Beranda'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              label: 'Cari'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.grey,
              ),
              label: 'Keranjang'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_sharp,
              color: Colors.grey,
            ),
            label: 'Profil',
          ),
        ],
        currentIndex: _pilihanbottom,
        selectedItemColor: primaryColor,
        onTap: _onItemTapped,
        // selectedLabelStyle: const TextStyle(
        //     overflow: TextOverflow.visible, fontSize: 10, color: Colors.black),
        // showSelectedLabels: true,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
