import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/petsCategImg/cat.png',
            image_caption: 'Cat',
          ),
          Category(
            image_location: 'images/petsCategImg/dog.png',
            image_caption: 'Dog',
          ),
          Category(
            image_location: 'images/petsCategImg/hamster.png',
            image_caption: 'Hamsterlich',
          ),
          Category(
            image_location: 'images/petsCategImg/fish.png',
            image_caption: 'Fish',
          ),
          Category(
            image_location: 'images/petsCategImg/scorpion.png',
            image_caption: 'Scorpion',
          ),
          Category(
            image_location: 'images/petsCategImg/rabbit.png',
            image_caption: 'Rabbit',
          ),
          Category(
            image_location: 'images/petsCategImg/dino.png',
            image_caption: 'Dinothor',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_caption, this.image_location});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        splashColor: Colors.orangeAccent,
        onTap: () {},
        child: Container(
          width: 100,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                image_location,
                width: 50,
                height: 30,
              ),
              Text(image_caption)
            ],
          ),
          // child: ListTile(
          //   title: Image.asset(image_location, width: 100, height: 80),
          //   subtitle: Container(
          //     alignment: Alignment.topCenter,
          //     child: Text(image_caption),
          //   ),
          // ),
        ),
      ),
    );
  }
}
