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
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Text('AppParcial'),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const Text('Segundo parcial',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100, 
                  height: 100, 
                  child: Card(
                    child: Icon(primericono, size: 28),
                    color: Color.fromARGB(255, 145, 228, 145)),
                ),
                Container(
                  width: 100, 
                  height: 100, 
                  child: Card(
                    color: const Color.fromARGB(255, 145, 228, 145),
                    child: Icon(segundoicono, size: 28),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100, 
                  height: 100, 
                  child: Card(
                    child: Icon(tercericono, size: 28),
                    color: const Color.fromARGB(255, 145, 228, 145),
                  ),
                ),
                Container(
                  width: 100, 
                  height: 100, 
                  child: Card(
                    color: const Color.fromARGB(255, 145, 228, 145),
                    child: Icon(cuartoicono, size: 28),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
