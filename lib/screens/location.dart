import 'dart:async';
import 'package:flutter/material.dart';
import '../screens/HomeScreen.dart';

class location extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10, 30, 10, 20),
            child: Text(
              "Location Services",
              style: TextStyle(color: Colors.black, fontSize: 40),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: Text(
              "Myrtle Beach Passport is designed to use your location to enhance your experience.",
              style: TextStyle(color: Colors.black, fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(40),
            child: Image(
              image: AssetImage("assets/images/location.png"),
              height: 150,
              width: 150,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(40, 10, 40, 15),
            child: OutlinedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.blue[900],
                minimumSize: Size.fromHeight(65),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Enable Location",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(70, 10, 70, 10),
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text(
                "Skip this step",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: Text(
              "Location settings can always be modified within the app",
              style: TextStyle(color: Colors.black54, fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
