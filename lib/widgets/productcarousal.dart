import 'package:flutter/material.dart';
import 'package:tryingoutamazon/models/product_model.dart';
import 'package:dotted_border/dotted_border.dart';
import '../../models/detail.dart';

class ProductCarousal extends StatelessWidget {
  final String title;
  final List<Product> products;
  ProductCarousal({this.title, this.products});

  _product(int index) {
    return InkWell(
  onTap: () {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => detail())));
  
  }, // Handle your callback
  child: Container(
      
      //margin: EdgeInsets.all(4),
      padding: EdgeInsets.all(8),
      width: 250,
      height: 400,
      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   boxShadow: [
      //     BoxShadow(color: Colors.black54, offset: Offset(0.0, 2.0), blurRadius: 6),
      //   ],
      // ),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            child: Image(
              image: AssetImage(products[index].imageUrl),
              height: 200,
              width: 2700,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(products[index].name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
          SizedBox(
            height: 5,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            FlatButton(
              padding: EdgeInsets.all(4),
              color: Colors.blue[100],
              child: Text(
                "Attraction",
                style: TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
            ),
            SizedBox(
              width: 5,
            ),
            OutlinedButton.icon(
              style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0), side: BorderSide(color: Colors.red)))),
              label: Text('3-5 miles'),
              icon: Icon(Icons.location_pin),
              onPressed: () {
                print('Pressed');
              },
            )
          ]),
          SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "used 23 times today ,",
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
              Text(
                " 2 remaining",
                style: TextStyle(color: Colors.red, fontSize: 15),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          DottedBorder(
            color: Colors.black,
            padding: EdgeInsets.all(3),
            strokeWidth: 1,
            dashPattern: [
              10,
              6
            ],
            child: Container(
              height: 34,
              width: 220,
              color: Colors.yellow,
              child: Text(
                "\$5 OFF the price of admission",
                style: TextStyle(color: Colors.black, fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    ),);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(
            title,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 360,
          child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10),
              itemCount: products.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return _product(index);
              }),
        )
      ],
    );
  }
}
