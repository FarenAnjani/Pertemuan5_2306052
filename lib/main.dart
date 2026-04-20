import 'package:flutter/material.dart';
import 'SecondPage.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // data produk
  final String name = "Produk Pertama";
  final int price = 100000; // FIX: harus int
  final String imageUrl = "https://picsum.photos/200/300"; // FIX: samakan nama

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage( // FIX: huruf besar
              name: name,
              price: price,
              imageUrl: imageUrl,
            ),
        '/second': (context) => SecondPage(name: 'name', price: price, imageUrl: 'imageUrl', description: 'description'),
      },
    );
  }
}