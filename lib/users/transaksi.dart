import 'package:flutter/material.dart';
import 'package:tokoyana/constans.dart';

class TransaksiPage extends StatefulWidget {
  @override
  _TransaksiPageState createState() => _TransaksiPageState();
}

class _TransaksiPageState extends State<TransaksiPage> {
  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    final double widthScreen = mediaQueryData.size.width;
    final double heightScreen = mediaQueryData.size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Palette.bg1,
          title: Text('Transaksi'),
        ),
        body: new GridView.count(
          crossAxisCount: 2,
          childAspectRatio: widthScreen / heightScreen,
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.network(
                    'http://www.pngmart.com/files/13/iPhone-12-Transparent-Images-PNG.png'),
                Text("Menu"),
                Text("11111")
              ],
            ),
            Column(
              children: <Widget>[
                Image.network(
                    'http://www.pngmart.com/files/13/iPhone-12-Transparent-Images-PNG.png'),
                Text("Menu"),
                Text("11111")
              ],
            ),
            Container(
              color: Colors.redAccent,
              child: Center(
                child: Text(
                  "2",
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
            ),
            Container(
              color: Colors.orange,
              child: Center(
                child: Text(
                  "3",
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
            ),
            Container(
              color: Colors.blueAccent,
              child: Center(
                child: Text(
                  "4",
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
            ),
          ],
        ));
  }
}
