import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fade in images',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fade in images'),
        ),
        body: Stack(
          children: <Widget>[
            Center(
              child: CircularProgressIndicator(),
            ),
            Center(
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: 'https://picsum.photos/250?image=9',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
