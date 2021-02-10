import 'package:flutter/material.dart';
import 'package:tokoyana/constans.dart';

class DepanPage extends StatefulWidget {
  @override
  _DepanPageState createState() => _DepanPageState();
}

class _DepanPageState extends State<DepanPage> {
  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    final double widthScreen = mediaQueryData.size.width;
    final double heightScreen = mediaQueryData.size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: new GridView.count(
          crossAxisCount: 2,
          childAspectRatio: widthScreen / heightScreen,
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.network(
                    'http://www.pngmart.com/files/13/iPhone-12-Transparent-Images-PNG.png'),
                Text(
                  "Iphone 1",
                  style:
                      TextStyle(fontSize: 20, fontFamily: "Serif", height: 2.0),
                ),
                Text("11111")
              ],
            ),
            Column(
              children: <Widget>[
                Image.network(
                    'http://www.pngmart.com/files/13/iPhone-12-Transparent-Images-PNG.png'),
                Text(
                  "Iphone 2",
                  style:
                      TextStyle(fontSize: 20, fontFamily: "Serif", height: 2.0),
                ),
                Text("11111")
              ],
            ),
            Column(
              children: <Widget>[
                Image.network(
                    'http://www.pngmart.com/files/13/iPhone-12-Transparent-Images-PNG.png'),
                Text(
                  "Iphone 3",
                  style:
                      TextStyle(fontSize: 20, fontFamily: "Serif", height: 2.0),
                ),
                Text("11111")
              ],
            ),
            Column(
              children: <Widget>[
                Image.network(
                    'http://www.pngmart.com/files/13/iPhone-12-Transparent-Images-PNG.png'),
                Text(
                  "Iphone 4",
                  style:
                      TextStyle(fontSize: 20, fontFamily: "Serif", height: 2.0),
                ),
                Text("11111")
              ],
            ),
            Column(
              children: <Widget>[
                Image.network(
                    'http://www.pngmart.com/files/13/iPhone-12-Transparent-Images-PNG.png'),
                Text(
                  "Iphone 5",
                  style:
                      TextStyle(fontSize: 20, fontFamily: "Serif", height: 2.0),
                ),
                Text("11111")
              ],
            ),
            Column(
              children: <Widget>[
                Image.network(
                    'http://www.pngmart.com/files/13/iPhone-12-Transparent-Images-PNG.png'),
                Text(
                  "Iphone 6",
                ),
                Text("11111")
              ],
            ),
            Column(
              children: <Widget>[
                Image.network(
                    'http://www.pngmart.com/files/13/iPhone-12-Transparent-Images-PNG.png'),
                Text(
                  "Iphone 7",
                  style:
                      TextStyle(fontSize: 20, fontFamily: "Serif", height: 2.0),
                ),
                Text("11111")
              ],
            ),
          ],
        ));
  }
}
