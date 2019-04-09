import 'package:flutter/material.dart';

abstract class _ListItem {}

class _HeadingItem implements _ListItem {
  final String heading;

  _HeadingItem(this.heading);
}

class _MessageItem implements _ListItem {
  final String sender;
  final String body;

  _MessageItem(this.sender, this.body);
}

class MyApp extends StatelessWidget {
  final items = List<_ListItem>.generate(1000, (i) {
    return i % 6 == 0
        ? _HeadingItem('Heading $i')
        : _MessageItem('Sender $i', 'Message body $i');
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mixed List',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mixed List'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            final item = items[index];
            if (item is _HeadingItem) {
              return ListTile(
                title: Text(
                  item.heading,
                  style: Theme.of(context).textTheme.headline,
                ),
              );
            } else if (item is _MessageItem) {
              return ListTile(
                title: Text(item.sender),
                subtitle: Text(item.body),
              );
            }
          },
          itemCount: items.length,
        ),
      ),
    );
  }
}
