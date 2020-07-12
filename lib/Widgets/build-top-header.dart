import 'package:flutter/material.dart';

class BuildTopHeader extends StatelessWidget {
  String title;
  BuildTopHeader(this.title,this._scaffoldKey);
  final GlobalKey<ScaffoldState> _scaffoldKey;
  @override
  Widget build(BuildContext context) {
    return AppBar(

      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
          child: new IconButton(
              icon: Icon(Icons.menu, size: 32.0, color: Colors.white),
              onPressed: () => _scaffoldKey.currentState.openDrawer()),
        ),
        SizedBox(width:10),
        new Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Center(
                child: new Text(title, style: Theme.of(context).textTheme.title),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
          child: Image.asset("assets/logoph.png"),
        )
      ],
    );
  }
}
