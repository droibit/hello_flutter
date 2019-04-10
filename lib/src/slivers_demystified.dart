// ref. https://medium.com/flutter-io/slivers-demystified-6ff68ab0296f

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sliver sample',
      home: Scaffold(body: CollapsingList()),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return SizedBox.expand(child: child);
  }
}

class CollapsingList extends StatelessWidget {
  SliverPersistentHeader makeHeader(String headerText) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _SliverAppBarDelegate(
        minHeight: 60.0,
        maxHeight: 200.0,
        child: Container(
          color: Colors.lightBlue,
          child: Center(
            child: Text(headerText),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        makeHeader('Header Section1'),
        SliverGrid.count(
          crossAxisCount: 3,
          children: <Widget>[
            Container(color: Colors.red, height: 150.0),
            Container(color: Colors.purple, height: 150.0),
            Container(color: Colors.green, height: 150.0),
            Container(color: Colors.orange, height: 150.0),
            Container(color: Colors.yellow, height: 150.0),
            Container(color: Colors.pink, height: 150.0),
            Container(color: Colors.cyan, height: 150.0),
            Container(color: Colors.indigo, height: 150.0),
            Container(color: Colors.blue, height: 150.0),
          ],
        ),
        makeHeader('Header Section 2'),
        SliverFixedExtentList(
          itemExtent: 150.0,
          delegate: SliverChildListDelegate(<Widget>[
            Container(color: Colors.red),
            Container(color: Colors.purple),
            Container(color: Colors.green),
            Container(color: Colors.orange),
            Container(color: Colors.yellow),
          ]),
        ),
        makeHeader('Header Section 3'),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: Text('grid item $index'),
              );
            },
            childCount: 20,
          ),
        ),
        makeHeader('Header Section 4'),
        // Yes, this could also be a SliverFixedExtentList. Writing
        // this way just for an example of SliverList construction.
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(color: Colors.pink, height: 150.0),
              Container(color: Colors.cyan, height: 150.0),
              Container(color: Colors.indigo, height: 150.0),
              Container(color: Colors.blue, height: 150.0),
            ],
          ),
        ),
      ],
    );
  }
}

class _SimpleSliverList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text('SliverAppBar'),
          backgroundColor: Colors.green,
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.network(
              'https://picsum.photos/800/400?image=0',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 150.0,
          delegate: SliverChildListDelegate(<Widget>[
            Container(color: Colors.red),
            Container(color: Colors.purple),
            Container(color: Colors.green),
            Container(color: Colors.orange),
            Container(color: Colors.yellow),
            Container(color: Colors.pink),
          ]),
        ),
      ],
    );
  }
}
