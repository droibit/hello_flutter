import 'package:flutter/material.dart';

class ColumnLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset('images/column_pic1.jpg'),
          Image.asset('images/column_pic2.jpg'),
          Image.asset('images/column_pic3.jpg'),
        ],
      ),
    );
  }
}

class RowLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset('images/row_pic1.jpg'),
          Image.asset('images/row_pic2.jpg'),
          Image.asset('images/row_pic3.jpg'),
        ],
      ),
    );
  }
}

class RowExpandedLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(child: Image.asset('images/row_expanded_pic1.jpg')),
          Expanded(
            child: Image.asset('images/row_expanded_pic2.jpg'),
            flex: 2,
          ),
          Expanded(child: Image.asset('images/row_expanded_pic3.jpg'))
        ],
      ),
    );
  }
}

class PackingLayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Icon(Icons.star, color: Colors.green[500]),
              new Icon(Icons.star, color: Colors.green[500]),
              new Icon(Icons.star, color: Colors.green[500]),
              new Icon(Icons.star, color: Colors.black),
              new Icon(Icons.star, color: Colors.black),
            ],
          ),
          Text(
            '170 Reviews',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontFamily: 'Robot',
                letterSpacing: 0.5,
                fontSize: 20.0
            ),
          )
        ],
      ),

    );
  }
}