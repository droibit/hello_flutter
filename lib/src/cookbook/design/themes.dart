import 'package:flutter/material.dart';

// ref. https://flutter.dev/docs/cookbook/design/themes
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Themes',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
        fontFamily: 'Montserrat',
        textTheme: TextTheme(
          headline: TextStyle(
            fontSize: 72.0,
            fontWeight: FontWeight.bold,
          ),
          title: TextStyle(
            fontSize: 36.0,
            fontStyle: FontStyle.italic,
          ),
          body1: TextStyle(
            fontSize: 14.0,
            fontFamily: 'Hind',
          ),
        ),
      ),
      home: _MyHomePage(),
    );
  }
}

class _MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Themes'),
      ),
      body: Center(
        child: Container(
          color: Theme.of(context).accentColor,
          child: Text(
            'Text with a background color',
            style: Theme.of(context).textTheme.title,
          ),
        ),
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(accentColor: Colors.yellow),
        child: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}