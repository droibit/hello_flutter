import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnakBar Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SnakBar Demo'),
        ),
        body: _SnackBarPage(),
      ),
    );
  }
}

class _SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          final snackbar = SnackBar(
            content: Text('Yay! A SnackBar!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {},
            ),
          );
          Scaffold.of(context).showSnackBar(snackbar);
        },
        child: Text('Show SnackBar'),
      ),
    );
  }
}
