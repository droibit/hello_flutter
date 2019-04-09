import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic List',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Basic List'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            )
          ],
        ),
      ),
    );
  }
}