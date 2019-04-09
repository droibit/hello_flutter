
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web Images',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Web Images'),
        ),
        body: Image.network(
          'https://picsum.photos/250?image=9'
        ),
      ),
    );
  }
}