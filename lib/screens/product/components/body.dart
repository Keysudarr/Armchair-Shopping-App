import 'package:armchair_shopping_app/screens/product/components/product_card.dart';
import 'package:flutter/material.dart';

import 'category_list.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BuildPadding(),
          CategoryList(),
          SizedBox(
            height: 10,
          ),
          ProductCard()
        ],
      ),
    );
  }

  Padding BuildPadding() {
    return Padding(
      padding: const EdgeInsets.only(
        right: 160,
        top: 15,
      ),
      child: Container(
        width: 200,
        child: Text(
          "Elegant Style Furniture",
          maxLines: 2,
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700]),
        ),
      ),
    );
  }
}
