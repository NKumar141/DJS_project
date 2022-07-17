import 'package:flutter/material.dart';
import 'package:tryingoutamazon/models/product_model.dart';

class ProductCarousal extends StatelessWidget {
  final String title;
  final List<Product> products;
  ProductCarousal({this.title, this.products});

  _product(int index) {
    return Container(
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
                "Add",
                style: TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
            ),
            FlatButton(
              padding: EdgeInsets.all(4),
              color: Colors.white,
              child: Text(
                "Add",
                style: TextStyle(color: Colors.black87, fontSize: 16, fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
            ),
          ]),
        ],
      ),
    );
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
          height: 320,
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
