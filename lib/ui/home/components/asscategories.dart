import 'package:flutter/material.dart';

class AssCategories extends StatefulWidget {
  @override
  _AssCategoriesState createState() => _AssCategoriesState();
}

class _AssCategoriesState extends State<AssCategories> {
  List<String> asscategories = [
    "Food",
    "Litter",
    "Toys",
    "Collars",
    "Beds",
    "Apparel",
    "Cages"
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          itemCount: asscategories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => buildAsscategories(index),
        ),
      ),
    );
  }

  Widget buildAsscategories(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              asscategories[index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: selectedIndex == index
                      ? Color(0xFF535353)
                      : Color(0xFFACACAC)),
            ),
            Container(
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.black : Colors.transparent,
              margin: EdgeInsets.only(top: 5),
            )
          ],
        ),
      ),
    );
  }
}
