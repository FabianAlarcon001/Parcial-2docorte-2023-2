import 'package:flutter/material.dart';
import 'package:aplicacionparcial/pages/ventana2.dart';

class HomeScreen extends StatelessWidget {
  
  final List<IconData> iconList = [
    Icons.home,
    Icons.work,
    Icons.school,
    Icons.shopping_cart,
  ];

  @override
  Widget build(BuildContext context) {

  IconData primericono = iconList[0];
  IconData segundoicono = iconList[1];
  IconData tercericono = iconList[2];
  IconData cuartoicono = iconList[3];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
            },
          ),
        title:  const Text('AppParcial'),
        actions: [
          IconButton(
            icon:  const Icon(Icons.account_circle),
            onPressed: () {
            },
          ),
          IconButton(
            icon:  const Icon(Icons.shopping_cart),
            onPressed: () {
            },
          ),          
        ],
      ),
      body: Center(
          child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Row (
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                child: Icon(primericono, size: 28,),
                color: const Color.fromARGB(255, 226, 227, 227),
                ),
                Card(
                color: const Color.fromARGB(255, 226, 227, 227),
                child: Icon(segundoicono, size: 28),
                ),
              ],
            ),
            Row (
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                child: Icon(tercericono, size: 28,),
                color: const Color.fromARGB(255, 226, 227, 227),
                ),
                Card(
                color: const Color.fromARGB(255, 226, 227, 227),
                child: Icon(cuartoicono, size: 28),
                ),
              ],
            ),
            ],
          ),
        ),
      /*body: Center(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            final cardTitle = 'Tarjeta ${index + 1}';
            final cardIcon = iconMap[cardTitle];

            return CardWidget(cardTitle: cardTitle, cardIcon: cardIcon);
          },
        ),
      ),*/
    );
  }
}
