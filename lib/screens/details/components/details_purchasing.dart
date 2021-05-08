import 'package:flutter/material.dart';

class DetailsPurchasing extends StatefulWidget {
  @override
  _DetailsPurchasingState createState() => _DetailsPurchasingState();
}

class _DetailsPurchasingState extends State<DetailsPurchasing> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(25), topLeft: Radius.circular(25)),
        color: Colors.grey[300],
      ),
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: Text(
                  "Total Price",
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 5),
                child: Text(
                  "€500",
                  style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 100,
          ),
          InkWell(onTap: (){print("Add to cart");},
            child: Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(15), left: Radius.circular(15)),
                color: Colors.blue[700],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 12, left: 25),
                child: Text(
                  "Add to cart",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
