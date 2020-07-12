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
           SizedBox(
             width:200,
             child: Stack(
               children: <Widget>[
                 Image.asset("assets/app-tablet-yellow.png"),
                 Image.asset("assets/app-tablet-locations-yellow.png"),
               ],
             )
           ),
          SizedBox(height:15),
          Carousel()




        ],
    );
  }
}
