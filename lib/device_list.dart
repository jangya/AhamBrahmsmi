import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:home_os/device_model.dart';
import 'package:home_os/card_builder.dart';


class DeviceList extends StatelessWidget {
  // const DeviceList({Key key}) : super(key: key);
  final List<Device> devices;
  
  DeviceList(this.devices);

  GridView _deviceList(context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      // childAspectRatio: (itemWidth / itemHeight)
      shrinkWrap: true,
      itemCount: devices.length,
      itemBuilder: (context, int) {
        return CardBuilder(devices[int]);
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
    );
  }

    @override
    Widget build(BuildContext context) {
      // var size = MediaQuery.of(context).size;

      // /*24 is for notification bar on Android*/
      // final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
      // final double itemWidth = size.width / 2;

      return _deviceList(context);
    }
  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     child: GridView.count(
  //       shrinkWrap: true,
  //       primary: false,
  //       padding: const EdgeInsets.all(20),
  //       crossAxisSpacing: 10,
  //       mainAxisSpacing: 10,
  //       crossAxisCount: 2,
  //       children: <Widget>[
  //         // CardBuilder(title: 'Morning', iconName: FontAwesomeIcons.cloudMoonRain),
  //         // CardBuilder(title: 'Night', iconName: FontAwesomeIcons.cloudMoonRain),
  //         // CardBuilder(title: 'Sleep', iconName: FontAwesomeIcons.moon),
  //       ],
  //     ),
  //   );
  // }
}
