import 'package:flutter/material.dart';

import 'components/body.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: BuildAppBar(),
      body: Body(),
    );
  }

  AppBar BuildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.grey[200],
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.subject,
          color: Colors.black,
          size: 28,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.shopping_cart_outlined,
            color: Colors.black,
            size: 28,
          ),
        )
      ],
    );
  }
}
