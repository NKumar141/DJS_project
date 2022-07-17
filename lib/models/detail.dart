import 'dart:async';
import 'package:flutter/material.dart';
import '../screens/location.dart';

class yes extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<yes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Image(
            image: AssetImage("assets/images/photo.png"),
            alignment: Alignment.center,
            fit: BoxFit.fill,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('The Alabama Theatre'),
              Image.network(
                'https://png.pngtree.com/png-clipart/20220429/original/pngtree-glossy-heart-best-vector-ai-and-png-png-image_7581956.png',
                height: 30,
                width: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class detail extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryIconTheme: Theme.of(context).primaryIconTheme.copyWith(
              color: Colors.black,
            ),
      ),
      home: yes(),
    );
  }
}
