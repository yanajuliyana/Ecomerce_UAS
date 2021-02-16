import 'package:flutter/material.dart';
import 'package:tokoyana/constans.dart';
import 'package:tokoyana/users/profile.dart';
import 'package:tokoyana/users/beranda.dart';
import 'package:tokoyana/users/proses/tambah.dart';
import 'package:tokoyana/users/listproduk.dart';
import 'package:tokoyana/users/transaksi.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new Beranda(),
    new ThirdFragment(),
    new AddDataPage(),
    new TransaksiPage(),
    new PageHome(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Palette.bg1,
        selectedItemColor: Palette.orange,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _bottomNavCurrentIndex = index;
          });
        },
        currentIndex: _bottomNavCurrentIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.home,
              color: Palette.orange,
            ),
            icon: new Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.shop,
                color: Palette.orange,
              ),
              icon: new Icon(
                Icons.shop,
                color: Colors.white,
              ),
              label: 'List Produk',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.add,
              color: Palette.orange,
            ),
            icon: new Icon(
              Icons.add,
              color: Colors.white,
            ),
            label: 'Tambah',
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.swap_horiz_sharp,
              color: Palette.orange,
            ),
            icon: new Icon(
              Icons.swap_horiz_sharp,
              color: Colors.white,
            ),
            label: 'Transaksi',
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.person,
              color: Palette.orange,
            ),
            icon: new Icon(
              Icons.person,
              color: Colors.white,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
