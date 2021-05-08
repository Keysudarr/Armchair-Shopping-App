import 'package:flutter/material.dart';

class DetailsDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.only(right: 170),
            child: Text(
              "Description",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800]),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 35,
            right: 20,
            top: 5,
          ),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.grey[500]),
            maxLines: 6,
          ),
        ),
      ],
    );
  }
}
