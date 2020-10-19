import 'package:flutter/material.dart';
import 'package:pet_assist/ui/pet_store/page.dart';
import 'package:pet_assist/ui/register/page.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      //DRAWER SHITS
      child: ListView(
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: <Color>[Colors.deepOrange, Colors.orangeAccent]),
              ),
              child: Container(
                child: Column(
                  children: <Widget>[Text('your profile here')],
                ),
              )),
          //SWITCH TO MY PETS PAGE
          CustomListTile(Icons.person, 'My Pets', () {}),
          //SWITCH TO ACCESSORIES PAGE
          CustomListTile(Icons.add_shopping_cart, 'Accessories', () {}),
          //SWITCH TO PET STORE AND ADOPTION PAGE
          CustomListTile(Icons.pets, 'Pets + Adoption', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PetStoreScreen()));
          }),
          //SWITCH TO THE ASSISTANT PAGE
          CustomListTile(Icons.assistant, 'Assistant', () {}),
          CustomListTile(Icons.logout, 'Sign out', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RegisterPage()));
          }),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;

  CustomListTile(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade400))),
        child: InkWell(
          splashColor: Colors.orangeAccent,
          onTap: onTap,
          child: Container(
            height: 40,
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(icon),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
