import 'package:flutter/material.dart';

// ref. https://flutter.dev/docs/cookbook/gestures/handling-taps
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gesture Demo',
      home: _MyHomePage(),
    );
  }
}

class _MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesture Demo'),
      ),
      body: Center(
        child: _MyButton(),
      ),
    );
  }
}

class _MyButton extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(content: Text('Tap'));
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: BorderRadius.circular(16.0)
        ),
        child: Text('My Button'),
      ),
    );
  }
}