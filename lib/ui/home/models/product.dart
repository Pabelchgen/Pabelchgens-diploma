import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, id;
  Product({
    this.id,
    this.description,
    this.image,
    this.price,
    this.title,
  });
}

// List<Product> product = [
//   Product(
//     id: 1,
//     title: "Whiskas Cat Food",
//     price: 15000,
//     description: dummyText,
//     image: "images/ProductDeleteLater/food1.png",
//   ),
//   Product(
//     id: 2,
//     title: "Dog Bed",
//     price: 30000,
//     description: dummyText,
//     image: "images/ProductDeleteLater/food1.png",
//   ),
//   Product(
//     id: 3,
//     title: "Dog Collar",
//     price: 10000,
//     description: dummyText,
//     image: "images/ProductDeleteLater/food1.png",
//   ),
//   Product(
//     id: 4,
//     title: "Cat Tree",
//     price: 60000,
//     description: dummyText,
//     image: "images/ProductDeleteLater/food1.png",
//   ),
// ];

// String dummyText =
//     "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
