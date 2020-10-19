import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pet_assist/ui/home/models/product.dart';

import 'asscategories.dart';

class Body extends StatelessWidget {
  List<Product> product = [
    Product(
      id: 1,
      title: "Whiskas Cat Food",
      price: 15000,
      description: "dummyText",
      image: "images/ProductDeleteLater/food1.png",
    ),
    Product(
      id: 2,
      title: "Dog Bed",
      price: 30000,
      description: "dummyText",
      image: "images/ProductDeleteLater/food1.png",
    ),
    Product(
      id: 3,
      title: "Dog Collar",
      price: 10000,
      description: "dummyText",
      image: "images/ProductDeleteLater/food1.png",
    ),
    Product(
      id: 4,
      title: "Cat Tree",
      price: 60000,
      description: "dummyText",
      image: "images/ProductDeleteLater/food1.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Categories",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        AssCategories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
              itemCount: product.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20),
              itemBuilder: (context, index) => ItemCard(
                product: product[index],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Container(
            // height: 180,
            // width: 160,
            decoration: BoxDecoration(
                color: Colors.orange, borderRadius: BorderRadius.circular(16)),
            child: Image.asset(product.image),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            product.title,
            style: TextStyle(color: Color(0xFFACACAC)),
          ),
        ),
        Text(
          "\$${product.price}",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
