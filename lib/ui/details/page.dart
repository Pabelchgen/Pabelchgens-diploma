import 'package:flutter/material.dart';

class PetDetails extends StatefulWidget {
  final pet_detail_name;
  final pet_detail_picture;
  final pet_detail_price;
  final pet_detail_isAdoption;

  PetDetails(
      {this.pet_detail_name,
      this.pet_detail_picture,
      this.pet_detail_price,
      this.pet_detail_isAdoption});

  @override
  _PetDetailsState createState() => _PetDetailsState();
}

class _PetDetailsState extends State<PetDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pets and Adoption'),
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white70,
                child: Hero(
                    tag: widget.pet_detail_name,
                    child: Image.asset(widget.pet_detail_picture)),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(
                    widget.pet_detail_name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text(
                        "\$${widget.pet_detail_price}",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      )),
                      // Expanded(
                      //     child: new Text("${widget.pet_detail_isAdoption}"))
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Row(
          //   children: <Widget>[
          //     Expanded(
          //       child: MaterialButton(
          //         onPressed: () {},
          //         color: Colors.white,
          //         textColor: Colors.grey,
          //         child: Row(
          //           children: <Widget>[Expanded(child: new Text(""))],
          //         ),
          //       ),
          //     )
          //   ],
          // )
          Divider(),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: new Text(
                  "Race",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),

                //CREATE RACES FIRST U IDIOT
                child: Text("random race"),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: new Text(
                  "Birthdate",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),

                //U ARE GOING TO INSERT THEIR BDAYS HERE FOOL
                child: Text("random date"),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: new Text(
                  "Pet name",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                //U DON'T EVEN KNOW WHAT U WANT TO DO HERE, DO U?
                child: Text("random name"),
              )
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text(
              "Pet Details",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: new Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ),
          Divider(),
        ],
      ),
    );
  }
}
