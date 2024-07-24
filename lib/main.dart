import 'package:flutter/material.dart';

import 'views/shopping_cart_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping Cart',
      home: ShoppingCartScreen(),
    );
  }
}
