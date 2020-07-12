import 'package:flutter/material.dart';

class MakeCard extends StatefulWidget {
  String renderUrl;
  String title;
  MakeCard(this.renderUrl,this.title);
  @override
  _MakeCardState createState() => _MakeCardState(renderUrl,title);
}

class _MakeCardState extends State<MakeCard> {
  String renderUrl;
  String title;
  _MakeCardState(this.renderUrl,this.title);
  Widget makeSection(String title) {
    return Container(
      width: 290.0,
      height: 120.0,
      child: Card(
        color: Theme.of(context).primaryColor,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
            left: 64.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(title,
                  style: Theme.of(context).textTheme.display1),
              SizedBox(height:5),
              Padding(
                padding: const EdgeInsets.only(right:12.0),
                child: Text("With trucks that accommodate various loads and are…",
                    style: Theme.of(context).textTheme.body1),
              ),
              FlatButton(onPressed: (){},
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text("read more",
                        style: Theme.of(context).textTheme.body2),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 15.0),
                blurRadius: 15.0),
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, -10.0),
                blurRadius: 10.0),
          ]),
    );
  }
  Widget makeImage(String renderUrl) {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
        image: DecorationImage(image: AssetImage(renderUrl),fit: BoxFit.fitHeight),
      ),
    );
  }
  Widget makeCard(String renderUrl,String title){
    return Container(
      height: 120.0,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 50.0,
            child: makeSection(title),
          ),
          Positioned(top: 7.5, child: makeImage(renderUrl)),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return makeCard(renderUrl,title);
  }
}
