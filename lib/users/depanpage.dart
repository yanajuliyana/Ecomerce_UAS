import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tokoyana/constans.dart';
import 'package:http/http.dart' as http;
import 'package:tokoyana/users/proses/delete.dart';

class DepanPage extends StatefulWidget {
  @override
  _DepanPageState createState() => _DepanPageState();
}

class _DepanPageState extends State<DepanPage> {
  Future<List> getData() async {
    final response = await http
        .get("https://projectfluttercrud.000webhostapp.com/listnews.php");
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return new FutureBuilder<List>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);

          return snapshot.hasData
              ? new ItemList(
                  list: snapshot.data,
                )
              : new Center(
                  child: CircularProgressIndicator(),
                );
        });
  }
}

class ItemList extends StatelessWidget {
  final List list;
  ItemList({this.list});
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: list == null ? 0 : list.length,
        itemBuilder: (context, i) {
          return new Container(
            color: Palette.bg1,
            padding: const EdgeInsets.all(10.0),
            child: new GestureDetector(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new Detailkategori(
                        list: list,
                        index: i,
                      ))),
              child: new GestureDetector(
                child: new Card(
                  child: Row(
                    children: [
                      Image.network(
                        'https://projectfluttercrud.000webhostapp.com/image/' +
                            list[i]['icon'],
                        fit: BoxFit.cover,
                        height: 180.0,
                        width: 160.0,
                      ),
                      Padding(padding: const EdgeInsets.all(10.0)),
                      Padding(padding: const EdgeInsets.all(10.0)),
                      Container(
                        child: Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 10.0),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        size: 15.0,
                                      ),
                                      Text(
                                        list[i]['name_catalog'],
                                        style: TextStyle(
                                          fontSize: 20.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  // child: new ListTile(
                  //   title: new Text(list[i]['name_catalog']),
                  //   // leading: new Icon(Icons.image),
                  //   // leading: GestureDetector(
                  //   //   child: Image.network(
                  //   //     'https://projectfluttercrud.000webhostapp.com/image/' +
                  //   //         list[i]['icon'],
                  //   //     height: 200.0,
                  //   //     width: 200.0,
                  //   //   ),
                  //   // ),
                  //   // leading: Image.network(
                  //   //   'https://projectfluttercrud.000webhostapp.com/image/' +
                  //   //       list[i]['icon'],
                  //   //   height: 200.0,
                  //   //   width: 200.0,
                  //   // ),
                  // ),
                ),
              ),
            ),
          );
        });
  }
}
