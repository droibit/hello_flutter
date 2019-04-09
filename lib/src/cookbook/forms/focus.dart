import 'package:flutter/material.dart';

// ref. https://flutter.dev/docs/cookbook/forms/focus
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Field Focus',
      home: _MyCustomForm(),
    );
  }
}

class _MyCustomForm extends StatefulWidget {

  @override
  State createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<_MyCustomForm> {

  FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }


  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Fields Focus'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              autofocus: true,
            ),
            TextField(
              focusNode: myFocusNode,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => FocusScope.of(context).requestFocus(myFocusNode),
        tooltip: 'Focus SEcond Text Field',
        child: Icon(Icons.edit),
      ),
    );
  }
}