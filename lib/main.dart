import 'package:flutter/material.dart';
import 'package:tokoyana/constans.dart';
import 'package:tokoyana/launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Palette.bg1,
        primarySwatch: Colors.blueGrey,
        primaryColorDark: Palette.bg1,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Signin(),
    );
  }
}
