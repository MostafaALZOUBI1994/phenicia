import 'package:flutter/material.dart';

class OurAgents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("Our Agents:",style:Theme.of(context).textTheme.display1),
            ],
          ),
        ),
        SizedBox(height:15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("Our agents around the world",style:Theme.of(context).textTheme.body1),
            ],
          ),
        ),
        SizedBox(height:15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Stack(
              children: <Widget>[
                Image.asset("assets/map-connect-yellow.png"),
                Image.asset("assets/map-locations-yellow.png"),
                Image.asset("assets/map.png")
              ],
            ),
        )
      ],
    );
  }
}
