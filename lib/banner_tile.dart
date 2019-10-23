import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BannerTile extends StatefulWidget {
  BannerTile({Key key}) : super(key: key);

  @override
  _BannerTileState createState() => _BannerTileState();
}

class _BannerTileState extends State<BannerTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      height: 120.0,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor, 
        boxShadow: [
          BoxShadow(
              color: Theme.of(context).primaryColor, blurRadius: 1, offset: Offset(0, 2))
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(
            FontAwesomeIcons.home,
            color: Colors.blue,
          ),
          Text(
            'Welcome to Home OS',
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}