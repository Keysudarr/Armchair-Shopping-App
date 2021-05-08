import 'package:armchair_shopping_app/screens/details/components/details_card.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: buildAppBar(),
      body: DetailsCard(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.grey[200],
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.black,
        ),
      ),
      centerTitle: true,
      title: Text(
        "Arm Chair",
        style: TextStyle(
            color: Colors.grey[700], fontSize: 28, fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
            onPressed: () {
              setState(() {
                isSelected = !isSelected;
              });
            },
            icon: Icon(
              isSelected ? Icons.favorite : Icons.favorite_border,
              color: isSelected ? Colors.red : Colors.black,
            ))
      ],
    );
  }
}
