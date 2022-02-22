import 'package:flutter/material.dart';
import 'package:ui_page_app_6/custom_widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ui-5',
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: Text('Catalog'),
              centerTitle: true,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                )
              ],
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: 'Producrs',
                  ),
                  Tab(
                    text: 'Catagories',
                  )
                ],
              ),
            ),
            body: ListView(children: [
              CustomListTile(
                  header: 'Couch Potato | Women',
                  imageUrl: 'assets/images/image1.jpg',
                  price: 799),
              CustomListTile(
                  header: 'Couch Potato | Men',
                  imageUrl: 'assets/images/image2.jpeg',
                  price: 799),
              CustomListTile(
                  header: 'Mug | Explore',
                  imageUrl: 'assets/images/image3.jpeg',
                  price: 399),
              CustomListTile(
                  header: 'Combo Blahst 1| Pack..',
                  imageUrl: 'assets/images/image4.jpg',
                  price: 699),
              CustomListTile(
                  header: 'Mug | Orchard',
                  imageUrl: 'assets/images/image5.jpeg',
                  price: 449),
              CustomListTile(
                  header: 'Couch Potato | Women',
                  imageUrl: 'assets/images/image1.jpg',
                  price: 799),
              CustomListTile(
                  header: 'Couch Potato | Men',
                  imageUrl: 'assets/images/image2.jpeg',
                  price: 799),
              CustomListTile(
                  header: 'Combo Blahst 1| Pack..',
                  imageUrl: 'assets/images/image4.jpg',
                  price: 699),
            ]),
          ),
        ));
  }
}
