import 'package:flutter/material.dart';
import 'package:tokoyana/constans.dart';
import 'package:tokoyana/users/landingpage.dart';
import 'package:tokoyana/users/listproduk.dart';

class DetailProduk extends StatefulWidget {
  @override
  _DetailProdukState createState() => _DetailProdukState();
}

class _DetailProdukState extends State<DetailProduk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Transaksi')),
        body: new Container(
          child: RaisedButton(
              color: Palette.bg1,
              child: Text("Beli"),
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ThirdFragment()));
              }),
        ));
  }
}
