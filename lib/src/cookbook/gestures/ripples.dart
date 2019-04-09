import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InkWell Demo',
      home: _MyHomePage(),
    );
  }
}

class _MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InkWell Demo'),
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
    return InkWell(
      onTap: () {
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text('Tap'),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text('Flat Button'),
      ),
    );
  }
}
