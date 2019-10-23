import 'package:flutter/material.dart';
import 'package:home_os/device_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardBuilder extends StatefulWidget {
  final Device device;

  CardBuilder(this.device);

  @override
  _CardBuilderState createState() => _CardBuilderState(device);
}

class _CardBuilderState extends State<CardBuilder> {
  Device device;

  _CardBuilderState(this.device);
  // IconData icon = 
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2/2,
      child: Card(
      elevation: 2,
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(8),
      // ),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: setAction(),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(
                FontAwesomeIcons.home,
                color: Colors.lightGreen,
              ),
              Text(
                device.name,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
      ),
    );
  }

  setAction() {}
}