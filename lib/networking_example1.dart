import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Networking1 extends StatefulWidget {
  Networking1({Key key}) : super(key: key);

  @override
  State createState() => Networking1State();
}

class Networking1State extends State<Networking1> {
  var _ipAddress = 'Unknown.';

  _getIpAddress() async {
    final url = 'https://httpbin.org/ip';
    final httpClient = HttpClient();

    String result;
    try {
      final request = await httpClient.getUrl(Uri.parse(url));
      final response = await request.close();
      if (response.statusCode == HttpStatus.OK) {
        final json = await response.transform(UTF8.decoder).join();
        final data = JSON.decode(json);
        result = data['origin'];
      } else {
        result =
        'Error getting IP address:\nHttp status ${response.statusCode}';
      }
    } catch (e) {
      result = 'Failed getting IP address';
    }

    if (!mounted) return;

    setState(() {
      _ipAddress = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Your current IP address is:'),
          Text('$_ipAddress.'),
          SizedBox(height: 32.0),
          RaisedButton(child: Text('Get IP Address'), onPressed: _getIpAddress)
        ],
      ),
    );
  }
}
