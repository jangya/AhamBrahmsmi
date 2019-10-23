import 'package:flutter/material.dart';
import 'package:home_os/banner_tile.dart';
import 'package:home_os/device_list.dart';
import 'package:home_os/mode_list.dart';
import 'package:home_os/device_model.dart';

class HomeOsApp extends StatefulWidget {
  HomeOsApp({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomeOsAppState createState() => _HomeOsAppState();
}

var initialDevices = <Device>[]
    ..add(Device('Device1', 'home'))
    ..add(Device('Morning', 'home'))
    ..add(Device('Morning', 'home'));


void _settingModalBottomSheet(context){
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc){
          return Container(
            child: new Wrap(
            children: <Widget>[
new ListTile(
            leading: new Icon(Icons.music_note),
            title: new Text('Music'),
            onTap: () => {}          
          ),
          new ListTile(
            leading: new Icon(Icons.videocam),
            title: new Text('Video'),
            onTap: () => {},          
          ),
            ],
          ),
          );
      }
    );
}
class _HomeOsAppState extends State<HomeOsApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: Icon(Icons.supervised_user_circle),
            onPressed: () => (){},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            BannerTile(),
            _divider(label: 'Modes'),
            SizedBox(height: 10.0,),
            ModeList(),
            SizedBox(height: 10.0,),
            _divider(label: 'All devices'),
            SizedBox(height: 10.0,),
            DeviceList(initialDevices),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _settingModalBottomSheet(context);
        },
        tooltip: 'Bot',
        child: Icon(Icons.add),
        elevation: 2.0,
      ),
      bottomNavigationBar: BottomAppBar(
        // color: Theme.of(context).splashColor,
        shape: CircularNotchedRectangle(),
        child: Container(
          // margin: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                    iconSize: 30.0,
                    icon: Icon(Icons.home),
                    onPressed: () {}
                    //   setState(() {
                    //     _myPage.jumpToPage(0);
                    //   });
                    // },
                  ),
                  IconButton(
                    iconSize: 30.0,
                    icon: Icon(Icons.search),
                    onPressed: () {}
                    //   setState(() {
                    //     _myPage.jumpToPage(1);
                    //   });
                    // },
                  ),
                  IconButton(
                    iconSize: 30.0,
                    icon: Icon(Icons.notifications),
                    onPressed: () {}
                  ),
                  IconButton(
                    iconSize: 30.0,
                    icon: Icon(Icons.list),
                    onPressed: () {}
                  )
                ],
              ),
            ),
          ),
    );
  }
}

class _divider extends StatelessWidget {
  const _divider({Key key, this.label}) : super(key: key);
  final String label;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
          Expanded(
              child: Divider()
          ),       

          Text(label),        

          Expanded(
              child: Divider()
          ),
      ],
    );
  }
}
