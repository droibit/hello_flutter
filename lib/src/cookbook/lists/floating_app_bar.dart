import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Floating App Bar',
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Text('Floating App Bar'),
              floating: true,
              flexibleSpace: Placeholder(),
              expandedHeight: 200,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => ListTile(
                      title: Text('Item #$index'),
                    ),
                childCount: 1000,
              ),
            )
          ],
        ),
      ),
    );
  }
}
