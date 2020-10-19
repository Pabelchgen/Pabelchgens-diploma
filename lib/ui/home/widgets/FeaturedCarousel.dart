import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pet_assist/ui/pet_store/page.dart';

class AssCarousel extends StatefulWidget {
  @override
  _AssCarouselState createState() => _AssCarouselState();
}

class _AssCarouselState extends State<AssCarousel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          CarouselSlider(
              items: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PetStoreScreen()));
                  },
                  child: Image.network(
                      "https://images-na.ssl-images-amazon.com/images/I/91B2erYxkEL._SX425_.jpg"),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PetStoreScreen()));
                  },
                  child: Image.network(
                      "https://i1.wp.com/gotahand.com/wp-content/uploads/2018/12/Cat-Tree.jpg?fit=3204%2C3204&ssl=1"),
                ),
                InkWell(
                  child: Image.network(
                      "https://cf.shopee.ph/file/a1ad8f6e83d0dea31c9658fa3d002ecd"),
                ),
                InkWell(
                  child: Image.network(
                      "https://www.pet-interiors.com/bilder/produktauswahl/556004-produkt.jpg"),
                ),
                InkWell(
                  child: Image.network(
                      "https://images-na.ssl-images-amazon.com/images/I/81Kal%2ByKbIL._AC_SL1500_.jpg"),
                ),
              ],
              options: CarouselOptions(
                height: 200,
                viewportFraction: 0.7,
                initialPage: 0,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 900),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              )),
        ],
      ),
    );
  }
}
