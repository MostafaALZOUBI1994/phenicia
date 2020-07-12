import 'package:flutter/material.dart';
import 'package:phonicia/Home/our_agents.dart';
import 'package:phonicia/Home/our_services.dart';
import 'package:phonicia/Home/our_value.dart';
import 'package:phonicia/Tracking/our_clients.dart';
import 'package:phonicia/Tracking/tack_your_order.dart';
import 'package:phonicia/Widgets/build-top-header.dart';
import 'package:phonicia/Widgets/makeDivider.dart';
import 'package:phonicia/Widgets/makeTextField.dart';
import '../drawer.dart';

class Tracking extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  static const String routeName = "/Tracking";
  _TrackingState createState()=> _TrackingState();
}
class _TrackingState extends State<Tracking>{
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: makeDrawer(),
        body: Container(
            decoration: new BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 0.8),
              image: new DecorationImage(
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.2), BlendMode.dstATop),
                image: AssetImage('assets/track.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: ListView(
              children: <Widget>[
                BuildTopHeader("Tracking", _scaffoldKey),
                SizedBox(height: 80),
                TrackYourOrder(),
                SizedBox(height: 80),
                OurClient()
              ],
            )));
  }

}
