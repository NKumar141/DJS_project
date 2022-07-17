import 'dart:async';
import 'package:flutter/material.dart';
import '../screens/location.dart';

class detail extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Image(
            image: AssetImage("assets/images/photo.png"),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
