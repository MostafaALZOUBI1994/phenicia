import 'package:flutter/material.dart';
import '../drawer.dart';


class Who_we_Are extends StatefulWidget {
  @override
  _Who_we_AreState createState() => _Who_we_AreState();
}

class _Who_we_AreState extends State<Who_we_Are> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
            children: <Widget>[
              SizedBox(
                width:150,
                  child: Image.asset("assets/about.png")
              ),
              SizedBox(
                width:190,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text("Who We Are:", style: Theme
                        .of(context)
                        .textTheme
                        .display1),
                    SizedBox(height:15),
                    Text(
                        "It is a company that is based on the principle of providing typical logistics services,"
                            " providing the best professional and personal services,"
                            " the full adaptation of the specific requirements of each customer,"
                            " using of high standards in providing of improved services,"
                            " in addition to the high flexibility of the deadlines.",
                        style: Theme
                            .of(context)
                            .textTheme
                            .body1),
                  ],
                ),
              ),
            ],
          ),
    );
  }
}
