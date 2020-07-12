import 'package:flutter/material.dart';
import 'package:phonicia/About/about_section_2.dart';
import 'package:phonicia/About/our_team.dart';
import 'package:phonicia/About/who_we_are.dart';
import 'package:phonicia/Services/our_services.dart';
import 'package:phonicia/Services/our_value.dart';
import 'package:phonicia/Widgets/build-top-header.dart';
import 'package:phonicia/Widgets/makeCard.dart';
import '../drawer.dart';

class About extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  static const String routeName = "/About";
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
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
                image: new AssetImage("assets/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: ListView(
              children: <Widget>[
                BuildTopHeader("About", _scaffoldKey),
                SizedBox(height:15),
                Who_we_Are(),
                SizedBox(height:15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:16.0),
                  child: Divider(height: 3.0,color:Theme.of(context).primaryColor),
                ),
                SizedBox(height:15),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: Column(
                      children: <Widget>[
                        MakeCard("assets/air-shipping.jpg","Our Message"),
                        SizedBox(height:10),
                        MakeCard("assets/land.jpg","Our Task"),
                        SizedBox(height:10),
                        MakeCard("assets/Phoenicia2.jpg","Our Vision"),
                        SizedBox(height:10),
                        MakeCard("assets/Phoenicia2.jpg","Our Value"),
                        SizedBox(height:10),
                      ],
                    )
                ),
                SizedBox(height:15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:16.0),
                  child: Divider(height: 3.0,color:Theme.of(context).primaryColor),
                ),
                SizedBox(height:15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text("Meet Our Team:",style:Theme.of(context).textTheme.display1),
                    ],
                  ),
                ),
                SizedBox(height:15),
                Our_Team()

              ],
            )));
  }

  Widget _buildTopHeader(BuildContext context,String title) {
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
            child: new Text(title,
                style: Theme.of(context).textTheme.title),
          ),
        ),
      ],
    );
  }
}
