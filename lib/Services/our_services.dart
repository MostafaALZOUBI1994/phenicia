import 'package:flutter/material.dart';
import 'package:phonicia/Widgets/makeCard.dart';
import '../drawer.dart';


class Our_Services extends StatefulWidget {
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Our_Services> {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text("Our Services:",style:Theme.of(context).textTheme.display1),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Column(
                children: <Widget>[
                  MakeCard("assets/air-shipping.jpg","Air Shipping"),
                  SizedBox(height:10),
                  MakeCard("assets/land.jpg","Land Shipping"),
                  SizedBox(height:10),
                  MakeCard("assets/Phoenicia2.jpg","Ocean Shipping"),
                  SizedBox(height:10),
                ],
              )
            ),
          ],
      ),
    );
  }

}
//"assets/Phoenicia2.jpg"