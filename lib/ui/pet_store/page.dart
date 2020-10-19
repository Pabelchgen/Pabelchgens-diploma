import 'package:flutter/material.dart';
import 'package:pet_assist/ui/pet_store/widgets/PetsGridview.dart';
import 'package:pet_assist/ui/pet_store/widgets/categoryList.dart';

class PetStoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pets and Adoption'),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      child: Image.asset(
                        'images/petassist.png',
                        width: 170,
                        height: 170,
                      ),
                    ),
                  ],
                ),
                Text('Some random cool texts here'),
                new Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text('Categories'),
                ),
                //CALLS PET CATEGORY LIST FROM CATEGORYLIST.DART
                HorizontalList(),
                //CALLS PETS GRIDVIEW FROM PETSGRIDVIEW.DART
                Container(
                  height: 320,
                  child: PetsGrid(),
                )
                // SizedBox(
                //   height: 300,
                //   child: new StaggeredGridView.countBuilder(
                //       crossAxisCount: 2,
                //       itemCount: imageList.length,
                //       itemBuilder: (context, index) => ImageCard(
                //             imageData: imageList[index],
                //           ),
                //       staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                //       mainAxisSpacing: 8.0,
                //       crossAxisSpacing: 8.0),
                // ),
              ],
            ),
          ),
        ));
  }
}
