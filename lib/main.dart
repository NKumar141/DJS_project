import 'dart:async';
import 'package:flutter/material.dart';
import '../screens/location.dart';

void main() => runApp(MyApp());

class Splash extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => signin())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white, child: Image(image: AssetImage('assets/images/splash.png')));
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Amazon UI Redesign',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryIconTheme: Theme.of(context).primaryIconTheme.copyWith(
              color: Colors.black,
            ),
      ),
      home: Splash(),
    );
  }
}

//home: HomeScreen(),
//
class signin extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Image(
            image: AssetImage("assets/images/splash.png"),
            alignment: Alignment.center,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(40, 0, 40, 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => location()));
                  },
                  style: OutlinedButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.blue[900],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        'http://pngimg.com/uploads/google/google_PNG19635.png',
                        width: 70,
                        height: 70,
                      ),
                      Text(
                        "Continue With Google",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => location()));
                  },
                  style: OutlinedButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.blue[900],
                    minimumSize: Size.fromHeight(70),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        'https://pngimg.com/uploads/apple_logo/apple_logo_PNG19680.png',
                        width: 70,
                        height: 40,
                      ),
                      Text(
                        "Continue With Apple",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
