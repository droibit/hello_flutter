import 'dart:async';
import 'dart:io';
import 'dart:io' as prefix0;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:path_provider/path_provider.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reading and Writing Files',
      home: _FlutterDemo(storage: CounterStorage()),
    );
  }
}

class _FlutterDemo extends StatefulWidget {
  final CounterStorage storage;

  _FlutterDemo({Key key, @required this.storage}) : super(key: key);

  @override
  State createState() => _FlutterDemoState();
}

class _FlutterDemoState extends State<_FlutterDemo> {
  int _counter;

  String _path = '---';

  @override
  void initState() {
    super.initState();

    widget.storage.readCounter().then((counter) {
      setState(() {
        _counter = counter;
      });
    });
    widget.storage.localPath.then((path) {
      setState(() {
        _path = path;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reading and Writing Files'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Button tapped $_counter time${_counter == 0 ? '' : 's'}'),
            Text('PATH: $_path'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  Future<File> _incrementCounter() {
    setState(() {
      _counter++;
    });
    return widget.storage.writeCounter(_counter);
  }
}

class CounterStorage {
  Future<String> get localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await localPath;
    return File('$path/counter.txt');
  }

  Future<int> readCounter() async {
    try {
      final file = await _localFile;
      final contents = await file.readAsString();
      return int.parse(contents);
    } catch (e) {
      debugPrint(e.toString());
      return 0;
    }
  }

  Future<prefix0.File> writeCounter(int counter) async {
    final file = await _localFile;
    return file.writeAsString('$counter');
  }
}
