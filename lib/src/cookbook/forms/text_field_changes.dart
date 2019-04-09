import 'package:flutter/material.dart';

// ref. https://flutter.dev/docs/cookbook/forms/text-field-changes
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Retrieve Text Input',
      home: _MyCustomForm(),
    );
  }
}

class _MyCustomForm extends StatefulWidget {

  @override
  State createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<_MyCustomForm> {

  final myController = TextEditingController();


  @override
  void initState() {
    super.initState();

    myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Retrive Text Inpu'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (text) {
                print('First text field: $text');
              },
            ),
            TextField(
              controller: myController,
            )
          ],
        ),
      ),
    );
  }

  _printLatestValue() {
    print('Second text field: ${myController.text}');
  }
}