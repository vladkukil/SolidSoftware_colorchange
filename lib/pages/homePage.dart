import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Random random = Random();
  Color background;

  Color changeBackgroundColor() {
    setState(() {
      var letters = '0123456789ABCDEF';
      var backgroundColor = '0xFF';
      for (var i = 0; i < 6; i++) {
        backgroundColor += letters[(random.nextInt(16)).floor()];
      }
      this.background = Color(int.parse(backgroundColor));
    });
    return this.background;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: InkWell(
                onTap: () {
                  this.changeBackgroundColor();
                },
                child: Container(
                  color: this.background,
                  child: Center(
                    child: Text(
                      'Hey there',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ))));
  }
}
