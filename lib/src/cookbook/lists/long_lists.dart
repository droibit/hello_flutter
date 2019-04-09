import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final items = List<String>.generate(1000, (i) => 'Item $i');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mixed List',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mixed List'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${items[index]}'),
            );
          },
          itemCount: items.length,
        ),
      ),
    );
  }
}
