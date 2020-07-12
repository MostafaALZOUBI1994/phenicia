import 'package:flutter/material.dart';
import 'package:phonicia/Home/our_agents.dart';
import 'package:phonicia/Home/our_services.dart';
import 'package:phonicia/Home/our_value.dart';
import 'package:phonicia/Widgets/build-top-header.dart';
import 'package:phonicia/Widgets/makeDivider.dart';
import '../drawer.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';


class Home extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  static const String routeName = "/Home";
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                BuildTopHeader("Home",_scaffoldKey),
                Our_Services(),
                MakeDivider(),
                SizedBox(height:15),
                Values(),
                SizedBox(height:15),
                MakeDivider(),
                SizedBox(height:15),
                OurAgents()
              ],
            )));
  }
}
