import 'package:flutter/material.dart';
import 'package:phonicia/Tracking_App/our_value.dart';
import 'package:phonicia/Widgets/build-top-header.dart';

import '../drawer.dart';
class TrackingApp extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  static const String routeName = "/TrackingApp";
  @override
  _TrackingAppState createState() => _TrackingAppState();
}

class _TrackingAppState extends State<TrackingApp> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: makeDrawer(),
        body: new Container(
            decoration: new BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 0.8),
              image: new DecorationImage(

                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.2),
                    BlendMode.dstATop
                ),
                image:  new AssetImage("assets/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: ListView(
              children: <Widget>[
                BuildTopHeader("Tracking App",_scaffoldKey),
                OurValue()
              ],
            )));
  }
}
