import 'package:flutter/material.dart';
import 'package:tokoyana/constans.dart';

class Abouts extends StatefulWidget {
  @override
  _AboutsState createState() => _AboutsState();
}

class _AboutsState extends State<Abouts> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Palette.bg1,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/logo.png",
                height: 200.0,
                width: 270.0,
              ),
              Text(
                'Copyright 2021',
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Serif",
                    height: 10.0,
                    color: Colors.white),
              ),
              Text(
                '     Yana J, Raden Jaka R, Wandi w, M Ihsan N',
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Serif",
                    height: 1.0,
                    color: Colors.white),
              ),
            ],
          )),
    );
  }
}
