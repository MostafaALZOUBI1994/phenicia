import 'package:flutter/material.dart';
import 'package:phonicia/Widgets/makeImage.dart';
import 'package:phonicia/data/data_our_team.dart';

class MyApp4 extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp4> {
  @override
  Widget build(BuildContext context) {
          return Stack(
            children: <Widget>[
              SizedBox(
                  height: 475,
                  child: ListView.builder(
                    itemCount: images.length,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(left: 35.0, bottom: 60.0),
                        child: SizedBox(
                          width: 200.0,
                          child: Stack(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top: 45.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: (index % 2 == 0)
                                          ? Colors.white
                                          : Theme.of(context).primaryColor,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black12,
                                            offset: Offset(0.0, 10.0),
                                            blurRadius: 10.0)
                                      ],
                                      borderRadius:
                                      BorderRadius.circular(12.0)),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  MakeImage(images[index]),
                                  SizedBox(
                                    height: 12.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(title[index],
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                color: (index % 2 == 0)
                                                    ? Color(0xFF2a2d3f)
                                                    : Colors.white)),
                                        SizedBox(
                                          height: 8.0,
                                        ),
                                        Text(subtitle[index],
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                color: (index % 2 == 0)
                                                    ? Color(0xFF2a2d3f)
                                                    : Colors.white)),
                                        SizedBox(
                                          height: 15.0,
                                        ),
                                        Text(body[index],
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                color: (index % 2 == 0)
                                                    ? Color(0xFF2a2d3f)
                                                    : Colors.white))
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
            ],
          );
  }
}