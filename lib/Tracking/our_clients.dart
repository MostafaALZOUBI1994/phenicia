import 'package:flutter/material.dart';
import 'package:phonicia/Widgets/makeImage.dart';
import 'package:phonicia/data/data_our_client.dart';
class OurClient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Our Clients:",style:Theme.of(context).textTheme.display1),
            ],
          ),
        ),
        SizedBox(height:15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Our customers are many around the world",style:Theme.of(context).textTheme.body1),
            ],
          ),
        ),
        SizedBox(height:15),
        Stack(
          children: <Widget>[
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: images.length,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return SizedBox(
                      width: 150.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: MakeImage(images[index]),
                          ),
                          Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(title[index],
                                    style: Theme.of(context).textTheme.display1),
                              ],
                            ),
                          )
                        ],
                      )
                    );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
