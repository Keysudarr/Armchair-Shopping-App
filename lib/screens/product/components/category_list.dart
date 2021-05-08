import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  // by default first item will be selected
  int selectedIndex = 0;
  List categories = ['All', 'Sofa', 'Park bench', 'Armchair', 'Tables', 'Lamp'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 50 / 2),
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
              left: 20,
              right: index == categories.length - 1 ? 20 : 0,
            ),
            padding: EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
                color: index == selectedIndex
                    ? Colors.grey.withOpacity(.4)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(15)),
            child: Text(
              categories[index],
              style: TextStyle(
                  color:
                      index == selectedIndex ? Colors.black : Colors.grey[700],
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
