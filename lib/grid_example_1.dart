import 'package:flutter/material.dart';

class GridLayout extends StatelessWidget {
  static final _images = <String>[
    'images/column_pic1.jpg',
    'images/column_pic2.jpg',
    'images/column_pic3.jpg',
    'images/row_pic1.jpg',
    'images/row_pic2.jpg',
    'images/row_pic3.jpg',
    'images/row_expanded_pic1.jpg',
    'images/row_expanded_pic2.jpg',
    'images/row_expanded_pic3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 150.0,
      padding: EdgeInsets.all(4.0),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      children: _buildGridTileList(),
    );
  }

  List<Container> _buildGridTileList() {
    return _images
        .map((name) => Container(child: Image.asset(name, fit: BoxFit.fill)))
        .toList();
  }
}
