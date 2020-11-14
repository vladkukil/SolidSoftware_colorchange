import 'package:flutter/material.dart';

import 'pages/homePage.dart';

void main() {
  runApp(SolidSoftwareTest());
}

class SolidSoftwareTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SolidSoftware test application',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
