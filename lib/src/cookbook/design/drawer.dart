import 'package:flutter/material.dart';

// ref. https://flutter.dev/docs/cookbook/design/drawer
class MyApp extends StatelessWidget {
  final String title;

  MyApp({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My app',
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Text('My page!'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(color: Colors.blue),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
