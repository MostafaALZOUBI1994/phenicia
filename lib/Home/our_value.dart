import 'package:flutter/material.dart';
import 'package:phonicia/Widgets/Carousel_for_value.dart';
class Values extends StatefulWidget {
  @override
  _ValuesState createState() => _ValuesState();
}

class _ValuesState extends State<Values> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("Our Value:",style:Theme.of(context).textTheme.display1),
            ],
          ),
        ),
        SizedBox(height:15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: SizedBox(
            width:250,
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Follow-up by a large cadre of specialist staff " +'\n\t\t\t\t' +" ready to provide you with accurate "+'\n\t\t\t\t\t\t' +" details of shipments at any time",
                  style:Theme.of(context).textTheme.body1,
                ),
              ],
            ),
          ),
        ),
        SizedBox(height:15),
        Column(
          children:[
            Stack(
              children: <Widget>[
                Image.asset("assets/phone-white-yellow.png"),
                Image.asset("assets/phone-black-yellow.png"),
              ],
            )
          ]
        ),
        Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(width:150,height:150,child: Image.asset("assets/big.png")),
                    Text("CONFIDENCE",style:Theme.of(context).textTheme.display1),
                    SizedBox(height:15),
                    SizedBox(width:150,height:60,child: Text("The focus of our strategy with our customers",style:Theme.of(context).textTheme.body1)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(width:150,height:150,child: Image.asset("assets/small.png")),
                    Text("CREDIBILITY",style:Theme.of(context).textTheme.display1),
                    SizedBox(height:15),
                    SizedBox(width:150,height:60,child: Text("Our real capital and our basic principle, which is not changed by changing circumstances",style:Theme.of(context).textTheme.body1)),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(width:150,height:150,child: Image.asset("assets/medium.png")),
                    Text("SECURITY",style:Theme.of(context).textTheme.display1),
                    SizedBox(height:15),
                    SizedBox(width:150,height:60,child: Text("By taking full responsibility for the safety of shipments",style:Theme.of(context).textTheme.body1)),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(width:150,height:150,child: Image.asset("assets/medium.png")),
                    Text("PERFECTION",style:Theme.of(context).textTheme.display1),
                    SizedBox(height:15),
                    SizedBox(width:150,height:60,child: Text("We follow modern scientific and technical methods and international standards",style:Theme.of(context).textTheme.body1)),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(width:150,height:150,child: Image.asset("assets/small.png")),
                    Text("SPEED",style:Theme.of(context).textTheme.display1),
                    SizedBox(height:15),
                    SizedBox(width:150,height:60,child: Text("Increase the speed of service delivery by streamlining their systems and processes",style:Theme.of(context).textTheme.body1)),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(width:150,height:150,child: Image.asset("assets/big.png")),
                    Text("PERSEVERANCE",style:Theme.of(context).textTheme.display1),
                    SizedBox(height:15),
                    SizedBox(width:150,height:60,child: Text("Work diligently and continuously in all stages of implementation",style:Theme.of(context).textTheme.body1)),
                  ],
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
