import 'package:flutter/material.dart';
import 'package:tokoyana/constans.dart';
import 'package:tokoyana/users/akun/abauts.dart';
import 'package:tokoyana/users/akun/info.dart';
import 'package:tokoyana/users/beranda.dart';
import 'package:tokoyana/users/depanpage.dart';
import 'package:tokoyana/users/listproduk.dart';
import 'package:tokoyana/users/proses/masuk/setting.dart';
import 'package:tokoyana/users/proses/masuk/sigin.dart';
import 'package:tokoyana/users/proses/tambah.dart';

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class PageHome extends StatefulWidget {
  final drawerItem = [
    new DrawerItem("Abaut", Icons.person),
    new DrawerItem("Produk", Icons.smartphone),
    new DrawerItem("Kategori", Icons.category_rounded),
    new DrawerItem("Input", Icons.add_a_photo),
    new DrawerItem("Logout", Icons.logout),
  ];

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new Abouts();
      case 1:
        return new ThirdFragment();
      case 2:
        return new DepanPage();
      case 3:
        return new AddDataPage();
      case 4:
        return new Signin();

      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    var drawerOptions = <Widget>[];
    for (var i = 0; i < widget.drawerItem.length; i++) {
      var d = widget.drawerItem[i];
      drawerOptions.add(new ListTile(
        leading: new Icon(d.icon),
        title: new Text(d.title),
        trailing: new Icon(Icons.arrow_right),
        selected: i == _selectedDrawerIndex,
        onTap: () => _onSelectItem(i),
      ));
    }

    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Palette.bg1,
        title: new Text(widget.drawerItem[_selectedDrawerIndex].title),
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text("Yana Juliyana"),
              accountEmail: Text("yanajuliyana23@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                    Theme.of(context).platform == TargetPlatform.iOS
                        ? Colors.blue
                        : Colors.white,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor:
                      Theme.of(context).platform == TargetPlatform.iOS
                          ? Colors.blue
                          : Colors.white,
                  child: Text(
                    "B",
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
              ],
            ),
            new Column(children: drawerOptions)
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}
