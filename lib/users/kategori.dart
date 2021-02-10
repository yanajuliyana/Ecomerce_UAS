import 'package:flutter/material.dart';
import 'package:tokoyana/users/listproduk.dart';

class KategoriPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First App',
      home: Scaffold(
          body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSErvWmzJtDFxVtZPDEWC_D7GUszSOZRzyTfw&usqp=CAU',
            ),
            Text(
              'Iphone Terbaru',
              style: TextStyle(fontSize: 24, fontFamily: "Serif", height: 2.0),
            ),
            Text('oleh Petani Kode'),
            Padding(padding: EdgeInsets.all(10.0)),
            Column(children: <Widget>[
              Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzzG_Z7Y4QOGgLeHOj-6vALvJt-ix5DhPptA&usqp=CAU'),
              Text(
                'Belajar Flutter untuk Pemula',
                style:
                    TextStyle(fontSize: 24, fontFamily: "Serif", height: 2.0),
              ),
              Text('oleh Petani Kode'),
              Padding(padding: EdgeInsets.all(10.0)),
            ]),
          ])),
    );
  }
}
