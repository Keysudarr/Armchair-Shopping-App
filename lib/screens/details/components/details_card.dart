import 'package:armchair_shopping_app/screens/details/components/details_description.dart';
import 'package:flutter/material.dart';

import 'details_colors_button.dart';
import 'details_purchasing.dart';

class DetailsCard extends StatefulWidget {
  @override
  _DetailsCardState createState() => _DetailsCardState();
}

class _DetailsCardState extends State<DetailsCard> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            width: 350,
            height: 350,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage("assets/images/6.jpg"),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 150,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                "New Style Chair",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.grey[700]),
                                maxLines: 2,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 60,
                            ),
                            child: Container(
                              width: 130,
                              height: 35,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.horizontal(
                                  right: Radius.circular(15),
                                  left: Radius.circular(15),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                      iconSize: 20,
                                      onPressed: () {
                                        setState(() {
                                          _counter++;
                                        });
                                      },
                                      icon: Icon(Icons.add)),
                                  Text(
                                    "$_counter",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22),
                                  ),
                                  IconButton(
                                      iconSize: 20,
                                      onPressed: () {
                                        setState(() {
                                          if (_counter > 0) {
                                            _counter--;
                                          } else {
                                            null;
                                          }
                                        });
                                      },
                                      icon: Icon(Icons.remove))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ]),
              ),
            ),
          ),
        ),
        DetailsDescription(),
        DetailsColors(),
        SizedBox(
          height: 30,
        ),
        DetailsPurchasing()
      ],
    );
  }
}
