import 'package:flutter/material.dart';

// ref. https://flutter.dev/docs/cookbook/forms/validation
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Valiation Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form Valiation Demo'),
        ),
        body: _MyCustomForm(),
      ),
    );
  }
}

class _MyCustomForm extends StatefulWidget {
  @override
  State createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<_MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text('Processing Data'),
                  ));
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
