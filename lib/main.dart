import 'package:flutter/material.dart';
import 'src/introduction_to_widgets.dart';

void main() => runApp(MaterialApp(
  title: 'My app',
  home: ShoppingList(
    products: <Product>[
      Product(name: 'Eggs'),
      Product(name: 'Flour'),
      Product(name: 'Chocolate chips'),
    ],
  ),
));
