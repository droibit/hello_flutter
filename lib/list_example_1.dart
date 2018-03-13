import 'package:flutter/material.dart';

class ListLayout1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text(
            'CineArts at the Empire',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20.0
            ),
          ),
          subtitle: Text('85 W Portal Ave'),
          leading: Icon(
            Icons.theaters,
            color: Colors.blue[500],
          ),
        ),
        ListTile(
          title: Text(
            'The Castro Theater',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20.0
            ),
          ),
          subtitle: Text('429 Castro St'),
          leading: Icon(
            Icons.theaters,
            color: Colors.blue[500],
          ),
        ),
        ListTile(
          title: Text(
            'Alamo Drafthouse Cinema',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20.0
            ),
          ),
          subtitle: Text('2550 Mission St'),
          leading: Icon(
            Icons.theaters,
            color: Colors.blue[500],
          ),
        ),
        ListTile(
          title: Text(
            'Roxie Theater',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20.0
            ),
          ),
          subtitle: Text('3117 16th St'),
          leading: Icon(
            Icons.theaters,
            color: Colors.blue[500],
          ),
        ),
        ListTile(
          title: Text(
            'United Artists Stonestown Twin',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20.0
            ),
          ),
          subtitle: Text('135 4th St #3000'),
          leading: Icon(
            Icons.theaters,
            color: Colors.blue[500],
          ),
        ),
        Divider(),
        ListTile(
          title: Text(
            'K\'s Kitchen',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20.0
            ),
          ),
          subtitle: Text('757 Monterey Blvd'),
          leading: Icon(
            Icons.restaurant,
            color: Colors.blue[500],
          ),
        ),
        ListTile(
          title: Text(
            'Chaiya Thai Restaurant',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20.0
            ),
          ),
          subtitle: Text('272 Claremont Blvd'),
          leading: Icon(
            Icons.restaurant,
            color: Colors.blue[500],
          ),
        ),
        ListTile(
          title: Text(
            'La Ciccia',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20.0
            ),
          ),
          subtitle: Text('291 30th St'),
          leading: Icon(
            Icons.restaurant,
            color: Colors.blue[500],
          ),
        ),
      ],
    );
  }
}