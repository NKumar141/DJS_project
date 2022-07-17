import 'package:flutter/material.dart';
import 'package:tryingoutamazon/models/product_model.dart';
import 'package:tryingoutamazon/screens/CartScreen.dart';
import 'package:tryingoutamazon/widgets/productcarousal.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90.0),
          child: Container(
              color: Colors.blue[900],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: <Widget>[
                        const Padding(
                            padding: const EdgeInsets.only(left: 2, right: 2.0, top: 2),
                            child: Text(
                              "Discover Deals",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            )),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(
                            Icons.notifications,
                            size: 20,
                          ),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.indigo[300], // background
                        onPrimary: Colors.white, // foreground
                      ),
                      onPressed: () {},
                      child: Row(children: [
                        Text("Search for a Deal or Category...", style: TextStyle(color: Colors.white, fontSize: 15)),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(
                            Icons.search,
                            size: 20,
                          ),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ]),
                    ),
                  ),
                ],
              )),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Today in Myrtle Beach", style: TextStyle(color: Colors.blue, fontSize: 15)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/image 2.png'),
                            height: 67,
                            width: 62,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("70 F C", style: TextStyle(color: Colors.blue, fontSize: 15)),
                              Text("Precitipation: 2%", style: TextStyle(color: Colors.blue, fontSize: 15)),
                              Text("Sun Index : 5-5", style: TextStyle(color: Colors.blue, fontSize: 15)),
                            ],
                          ),
                        ],
                      ),
                      OutlinedButton.icon(
                        style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0), side: BorderSide(color: Colors.red)))),
                        label: Text('''     Offers 
    Redeemed''', style: TextStyle(color: Colors.black, fontSize: 20)),
                        icon: Image(
                          image: AssetImage('assets/images/14.png'),
                        ),
                        onPressed: () {
                          print('Pressed');
                        },
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('''Good
 Morning!''', style: TextStyle(color: Colors.black, fontSize: 15)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/image 2.png'),
                            height: 67,
                            width: 62,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("70 F C", style: TextStyle(color: Colors.blue, fontSize: 10)),
                              Text("Precitipation: 2%", style: TextStyle(color: Colors.blue, fontSize: 10)),
                              Text("Sun Index : 5-5", style: TextStyle(color: Colors.blue, fontSize: 10)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0), side: BorderSide(color: Colors.red)))),
                    child: Text(
                      'Dining',
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                    onPressed: () {
                      print('Pressed');
                    },
                  ),
                  OutlinedButton(
                    style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0), side: BorderSide(color: Colors.red)))),
                    child: Text(
                      'Catogry',
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                    onPressed: () {
                      print('Pressed');
                    },
                  ),
                  OutlinedButton(
                    style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0), side: BorderSide(color: Colors.red)))),
                    child: Text(
                      'Near Me',
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                    onPressed: () {
                      print('Pressed');
                    },
                  ),
                  OutlinedButton(
                    style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0), side: BorderSide(color: Colors.red)))),
                    child: Text(
                      'Most Popular',
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                    onPressed: () {
                      print('Pressed');
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ProductCarousal(
              title: "Offers Near Me",
              products: products,
            ),
            ProductCarousal(
              title: "Favourite Buisnesses",
              products: books,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting, // Shifting
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blue, // <-- This works for shifting
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              backgroundColor: Colors.blue, // <-- This works for shifting
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet_giftcard),
              label: 'Redeem',
              backgroundColor: Colors.blue, // <-- This works for shifting
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.blue, // <-- This works for shifting
            ),
          ],
        ));
  }
}
