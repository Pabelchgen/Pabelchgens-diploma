import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pet_assist/ui/details/page.dart';

class PetsGrid extends StatefulWidget {
  @override
  _PetsGridState createState() => _PetsGridState();
}

class _PetsGridState extends State<PetsGrid> {
  var pet_list = [
    {
      "species": "Cat01",
      "picture": "images/animals/randCat1.jpg",
      "price": 100,
      "isAdoption": "nope",
    },
    {
      "species": "Dog01",
      "picture": "images/animals/randDog1.jpg",
      "price": 150,
      "isAdoption": "nope",
    },
    {
      "species": "Cat02",
      "picture": "images/animals/randCat2.jpg",
      "price": 220,
      "isAdoption": "nope",
    },
    {
      "species": "Cat03",
      "picture": "images/animals/randCat3.jpg",
      "price": 220,
      "isAdoption": "nope",
    },
    {
      "species": "Hamster01",
      "picture": "images/animals/randHamster1.jpg",
      "price": 40,
      "isAdoption": "nope",
    },
    {
      "species": "Cat04",
      "picture": "images/animals/randCat4.jpg",
      "price": 180,
      "isAdoption": "nope",
    },
    {
      "species": "Cat05",
      "picture": "images/animals/randCat5.jpg",
      "price": 320,
      "isAdoption": "nope",
    },
    {
      "species": "Squidward01",
      "picture": "images/animals/randCthulhu1.jpg",
      "price": "1",
      "isAdoption": "nope",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: pet_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SinglePet(
            pet_name: pet_list[index]['species'],
            pet_picture: pet_list[index]['picture'],
            pet_price: pet_list[index]['price'],
            pet_isAdoption: pet_list[index]['isAdoption'],
          );
        });
  }
}

class SinglePet extends StatelessWidget {
  final pet_name;
  final pet_picture;
  final pet_price;
  final pet_isAdoption;

  SinglePet(
      {this.pet_name, this.pet_picture, this.pet_price, this.pet_isAdoption});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Material(
        child: InkWell(
          onTap: () => Navigator.of(context).push(new MaterialPageRoute(
              builder: (context) => new PetDetails(
                    //pass pet values to pet details page
                    pet_detail_name: pet_name,
                    pet_detail_picture: pet_picture,
                    pet_detail_price: pet_price,
                    pet_detail_isAdoption: pet_isAdoption,
                  ))),
          child: GridTile(
            footer: Container(
                color: Colors.white,
                child: new Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text(
                        pet_name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    new Text(
                      "\$${pet_price}",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    )
                  ],
                )),
            child: Hero(
                tag: pet_name,
                child: Image.asset(pet_picture, fit: BoxFit.cover)),
          ),
        ),
      ),
    );
  }
}
