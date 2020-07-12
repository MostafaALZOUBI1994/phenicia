import 'package:flutter/material.dart';
import 'package:phonicia/Services/our_services.dart';
import 'package:phonicia/Services/our_value.dart';
import 'package:phonicia/Widgets/build-top-header.dart';
import '../drawer.dart';

class Services extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  static const String routeName = "/Services";
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
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
                BuildTopHeader("Services", _scaffoldKey),
                Our_Services(),
                Values(),
              ],
            )));
  }

  Widget _buildTopHeader(BuildContext context) {
    return Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
            child: new IconButton(
                icon: Icon(Icons.menu, size: 32.0, color: Colors.white),
                onPressed: () => _scaffoldKey.currentState.openDrawer()),
          ),
          new Expanded(
            child: Center(
              child: new Text("Services",
                  style: Theme.of(context).textTheme.title),
            ),
          ),
        ],
    );
  }
}
