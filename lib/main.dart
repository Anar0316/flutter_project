import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mongol/mongol.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
              width: 190.0,
              height: 190.0,
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: new NetworkImage("assets/images/Me.JPG")))),
          new Text("Anar", textScaleFactor: 1.5),
          Container(
              height: 400,
              width: 300,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: MongolText('ᠮᠢᠨᠦ ᠨᠡᠷ᠎ᠡ ᠶᠢ ᠠᠨᠠᠷ ᠭᠡᠳᠡᠭ᠃ ᠪᠢ 22 ᠨᠠᠰᠤᠲᠠᠢ᠃ ᠣᠳᠣ ᠪᠠᠷ ᠪᠢ ᠠᠩᠭᠯᠢ᠂ ᠣᠷᠣᠰ᠂ ᠬᠢᠲᠠᠳ ᠬᠡᠯᠡ ᠲᠡᠢ ᠪᠢᠯᠡ᠃ ᠣᠳᠣ ᠮᠡᠳᠡᠭᠡᠯᠡᠯ ᠲᠧᠭᠨᠣᠯᠣᠭᠢ ᠶᠢᠨ ᠮᠡᠷᠭᠡᠵᠢᠯ ᠢᠶᠡᠷ 3 ᠳ᠋ᠤᠭᠠᠷ ᠺᠦᠷᠰ ᠲᠦ ᠰᠤᠷᠠᠳᠠᠭ᠃',
                      style: TextStyle(
                          fontFamily: 'MongolianScript', fontSize: 30))))
        ],
      ),
    ));
  }
}
