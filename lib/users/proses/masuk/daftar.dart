import 'package:flutter/material.dart';
import 'package:tokoyana/constans.dart';
import 'package:tokoyana/launcher.dart';
import 'package:tokoyana/users/beranda.dart';
import 'package:tokoyana/users/landingpage.dart';
import 'package:tokoyana/users/listproduk.dart';
import 'package:tokoyana/users/proses/masuk/daftar.dart';
import 'package:tokoyana/users/proses/masuk/Animation.dart';
import 'package:tokoyana/users/proses/masuk/sigin.dart';

class Signup extends StatefulWidget {
  Signup({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> with TickerProviderStateMixin {
  TextEditingController txtUsername = new TextEditingController();
  TextEditingController txtPassword = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 30),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Palette.bg1,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                  Widget>[
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  FadeAnimation(
                      1,
                      Text("Login ",
                          style: TextStyle(color: Colors.white, fontSize: 40))),
                  FadeAnimation(
                      1.3,
                      Text("Welcome Hi ",
                          style: TextStyle(color: Colors.white, fontSize: 18))),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(115, 230, 161, .3),
                                    blurRadius: 20,
                                    offset: Offset(0, 10))
                              ]),
                          child: Column(
                            children: <Widget>[
                              FadeAnimation(
                                  1,
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey[200]))),
                                    child: TextField(
                                      controller: txtUsername,
                                      decoration: InputDecoration(
                                          hintText: "Name",
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          border: InputBorder.none),
                                    ),
                                  )),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[200]))),
                                child: TextField(
                                  controller: txtUsername,
                                  decoration: InputDecoration(
                                      hintText: "Email or Phone Number",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none),
                                ),
                              ),
                              FadeAnimation(
                                  1.5,
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey[200]))),
                                    child: TextField(
                                      controller: txtPassword,
                                      decoration: InputDecoration(
                                          hintText: "Password",
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          border: InputBorder.none),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Text("Forgot Password",
                            style: TextStyle(color: Colors.grey)),
                        SizedBox(height: 20),
                        FadeAnimation(
                          1,
                          ButtonTheme(
                            minWidth: double.infinity,
                            child: RaisedButton(
                                onPressed: () {
                                  {
                                    showDialog(
                                        context: context,
                                        child: AlertDialog(
                                          title: Text("Login"),
                                          content: Text("Berhasil"),
                                          actions: <Widget>[
                                            FlatButton(
                                                onPressed: () {
                                                  Navigator.pushReplacement(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                    return LauncherPage();
                                                  }));
                                                },
                                                child: Text("OK"))
                                          ],
                                        ));
                                  }
                                },
                                child: Text(
                                  "LOGIN",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ),
                        ButtonTheme(
                          minWidth: double.infinity,
                          child: RaisedButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    child: AlertDialog(
                                      title: Text("Apakah kamu Ingin Login?"),
                                      actions: <Widget>[
                                        FlatButton(
                                            onPressed: () {
                                              Navigator.pushReplacement(context,
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                                return Signin();
                                              }));
                                            },
                                            child: Text("Iya"))
                                      ],
                                    ));
                              },
                              child: Text(
                                "DAFTAR",
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                        SizedBox(height: 20),
                        Text("With Social Media",
                            style: TextStyle(color: Colors.grey)),
                        SizedBox(height: 20),
                        FadeAnimation(
                            1,
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.blue),
                                    child: Center(
                                      child: Center(
                                        child: Text(
                                          "Facebook",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20),
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.red),
                                    child: Center(
                                      child: Text(
                                        "Google",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ],
                    )),
              ),
            )
          ]),
        ));
  }
}
