import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

const String _kGalleryAssetsPackage = 'flutter_gallery_assets';

class TravelDestination {
  final String assetName;

  final String assetPackage;

  final String title;

  final List<String> description;

  bool get isValid =>
      assetName != null && title != null && description?.length == 3;

  const TravelDestination(
      {this.assetName, this.assetPackage, this.title, this.description});
}

final destinations = <TravelDestination>[
  const TravelDestination(
    assetName: 'top_10_australian_beaches.jpg',
    assetPackage: _kGalleryAssetsPackage,
    title: 'Top 10 Australian beaches',
    description: const <String>[
      'Number 10',
      'Whitehaven Beach',
      'Whitsunday Island, Whitsunday Islands',
    ],
  ),
  const TravelDestination(
    assetName: 'kangaroo_valley_safari.jpg',
    assetPackage: _kGalleryAssetsPackage,
    title: 'Kangaroo Valley Safari',
    description: const <String>[
      '2031 Moss Vale Road',
      'Kangaroo Valley 2577',
      'New South Wales',
    ],
  )
];

// FIXME: Images can not be loaded from Asset Gallery.
class TravelDestinationItem extends StatelessWidget {
  static const double height = 366.0;

  final TravelDestination destination;

  TravelDestinationItem({Key key, @required this.destination})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final titleStyle = theme.textTheme.headline.copyWith(color: Colors.white);
    final descriptionStyle = theme.textTheme.subhead;

    return SafeArea(
      top: false,
      bottom: false,
      child: Container(
          padding: EdgeInsets.all(8.0),
          height: height,
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 184.0,
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: Image.asset(
                          destination.assetName,
                          package: destination.assetPackage,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 16.0,
                        left: 16.0,
                        right: 16.0,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.centerLeft,
                          child: Text(destination.title, style: titleStyle),
                        ),
                      )
                    ],
                  ),
                ),
                // description and share/explore buttons
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                    child: DefaultTextStyle(
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                        style: descriptionStyle,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                destination.description[0],
                                style: descriptionStyle.copyWith(
                                    color: Colors.black54),
                              ),
                            ),
                            Text(destination.description[1]),
                            Text(destination.description[2]),
                          ],
                        )
                    ),
                  ),
                ),
                // share, explore buttons
                ButtonTheme.bar(
                  child: ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: <Widget>[
                      FlatButton(
                        child: Text('SHARE'),
                        textColor: Colors.amber.shade500,
                        onPressed: () {/* do nothing */},
                      ),
                      FlatButton(
                        child: Text('EXPLORE'),
                        textColor: Colors.amber.shade500,
                        onPressed: () {/* do nothing */},
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class CardLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      itemExtent: TravelDestinationItem.height,
      padding: EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
      children: destinations.map((destination) {
        return Container(
          margin: EdgeInsets.only(bottom: 8.0),
          child: TravelDestinationItem(destination: destination),
        );
      }).toList(),
    );
  }
}
