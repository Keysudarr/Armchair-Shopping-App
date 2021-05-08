import 'package:flutter/material.dart';

class DetailsColors extends StatefulWidget {
  @override
  _DetailsColorsState createState() => _DetailsColorsState();
}

class _DetailsColorsState extends State<DetailsColors> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 40),
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 10),
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              border: Border.all(width: 5, color: Colors.white),
              shape: BoxShape.circle,
              color: Colors.cyan,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 10),
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blueGrey,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 10),
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.deepPurpleAccent,
            ),
          ),
        ),
      ],
    );
  }
}
