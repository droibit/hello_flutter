import 'package:flutter/material.dart';

class StackLayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(0.6, 0.6),
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://raw.githubusercontent.com/flutter/website/master/_includes/code/layout/stack/images/pic.jpg"
          ),
          radius: 100.0,
        ),
        Container(
          decoration: BoxDecoration(color: Colors.black45),
          child: Text(
            'Mia B',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}