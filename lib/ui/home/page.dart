import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pet_assist/global/drawer.dart';
import 'package:pet_assist/ui/home/widgets/FeaturedCarousel.dart';
import 'package:pet_assist/ui/home/widgets/dk.dart';
import 'package:pet_assist/ui/pet_store/page.dart';

import 'components/body.dart';

class HomePage extends StatelessWidget {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  // List<String> categ = ["All", "Food", "Leash", "Cage", "Sand"];
  // List<String> categImages = [
  //   "https://static3.stuff.co.nz/stuff-nation-logo-37de359e.png",
  //   "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/20190503-delish-pineapple-baked-salmon-horizontal-ehg-450-1557771120.jpg",
  //   "https://images-na.ssl-images-amazon.com/images/I/71iWiBLrogL._AC_SY450_.jpg",
  //   "https://images-na.ssl-images-amazon.com/images/I/81JFb671OWL._AC_SY450_.jpg",
  //   "https://image.made-in-china.com/202f0j00rtlROcQKOwua/Pet-Litter-2-8mm-Crystal-Silica-Gel-Sand-for-Cats.jpg"
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _drawerKey,
        //APPBAR OBVIOSLY LOL
        appBar: AppBar(
          // elevation: 10.0,
          title: Text("LOGO"),
          centerTitle: true,
          actions: [
            IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  _drawerKey.currentState.openEndDrawer();
                })
          ],
        ),
        endDrawer: AppDrawer(),
        endDrawerEnableOpenDragGesture: false,
        body: Container(
          child: Column(
            children: <Widget>[
              // AssCarousel(),
              Body(),
            ],
          ),
        ));
  }
//       body: Container(
//         child: Column(
//           children: [
//             AssCarousel(),
//             //FEATURED ACCESSORIES SLIDER
//             // CarouselSlider(
//             //     items: [
//             //       Image.network(
//             //           "https://i.pinimg.com/originals/99/b3/59/99b359a7b2778f4b12e081d920f2143b.jpg"),
//             //       Image.network(
//             //           "https://images.hindustantimes.com/tech/rf/image_size_960x540/HT/p2/2020/02/16/Pictures/_2533b3ee-50af-11ea-93ec-7436143f72aa.jpeg"),
//             //       Image.network(
//             //           "https://i.ytimg.com/vi/yit1ngGNJQo/maxresdefault.jpg")
//             //     ],
//             //     options: CarouselOptions(
//             //         height: 200,
//             //         viewportFraction: 0.7,
//             //         initialPage: 0,
//             //         enableInfiniteScroll: true,
//             //         autoPlay: true,
//             //         autoPlayInterval: Duration(seconds: 3),
//             //         autoPlayAnimationDuration: Duration(milliseconds: 900),
//             //         autoPlayCurve: Curves.fastOutSlowIn,
//             //         enlargeCenterPage: true,
//             //         scrollDirection: Axis.horizontal,)),

//             Container(
//               //ACCESSORY CATEGORIES SLIDER
//               height: 150,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 5,
//                 itemBuilder: (BuildContext context, int index) {
//                   return Container(
//                     width: 200,
//                     child: Card(
//                       child: Stack(
//                         children: [
//                           Image.network(
//                             categImages[index],
//                             width: 200,
//                             height: 150,
//                             fit: BoxFit.fill,
//                           ),
//                           Center(
//                               child: Text(
//                             categ[index],
//                             style: TextStyle(fontSize: 20, color: Colors.grey),
//                           )),
//                         ],
//                       ),
//                       color: Colors.green,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(16)),
//                       clipBehavior: Clip.antiAlias,
//                       margin: EdgeInsets.all(8),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
  // endDrawer: AppDrawer(),
  // endDrawerEnableOpenDragGesture: false,
//     );
//   }
// }
}
