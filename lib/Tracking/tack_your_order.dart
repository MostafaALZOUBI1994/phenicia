import 'package:flutter/material.dart';
import 'package:phonicia/Widgets/makeTextField.dart';
class TrackYourOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          'assets/track.png',
          width: 200,
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("TRACK YOUR ORDER",
                  style: Theme.of(context).textTheme.display1),
            ],
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("ENTER YOUR TRACK ID FOR INSTANT SEARCH",
                  style: Theme.of(context).textTheme.body1),
            ],
          ),
        ),
        SizedBox(height: 15),
        MakeFieldText("Track ID"),
      ],
    );
  }
}
