import 'package:flutter/material.dart';

class HomeScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('larutaetcetcetc.jpg'), 
            ),
            SizedBox(height: 20),
            FloatingActionButton(
              onPressed: () {
              showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Popup',
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Text('.....................'),
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cerrar')),
            ],
          );
              },
            ),
          ],
        ),
      ),
    );
  }
}
