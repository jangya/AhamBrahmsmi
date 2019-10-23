import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:home_os/device_model.dart';
import 'package:home_os/card_builder.dart';


class ModeList extends StatelessWidget {
  final Device device = Device('Device1', 'home');

    @override
    Widget build(BuildContext context) {
      return Container(
          height: 120.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              CardBuilder(device),
              CardBuilder(device),
              CardBuilder(device),
              CardBuilder(device),
            ],
          ),
        ),
      );
    }
}
