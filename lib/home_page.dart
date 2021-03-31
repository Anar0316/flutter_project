import 'dart:math';

import 'package:flutter/material.dart';
import 'file:///D:/Anar/flutter_project/lib/home_page_manager.dart;

class BodyWidget extends StatefulWidget {
  @override
  _BodyWidgetState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {

  final homePageManager = HomePageManager();


  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Color>(
      valueListenable: homePageManager.colorNotfier,
      builder: (context, color, child) {
        return Container(
          width: double.infinity,
          height: double.infinity,
          color: color,
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 100),
                Text('Hello'),
                SizedBox(height: 100),
                ElevatedButton(
                  onPressed: () {
                    homePageManager.changeBackgroundColor();
                  },
                  child: Text('Click me'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}