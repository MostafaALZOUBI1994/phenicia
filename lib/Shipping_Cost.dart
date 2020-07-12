import 'package:flutter/material.dart';

import 'drawer.dart';


class ShippingCost4 extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  static const String routeName = "/Shipping Cost";
  @override
  _ShippingCostState createState() => _ShippingCostState();
}

class _ShippingCostState extends State<ShippingCost4> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: makeDrawer(),
        body: new Container(
            decoration: new BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 0.8),
              image: new DecorationImage(

                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.2),
                    BlendMode.dstATop
                ),
                image: new AssetImage("assets/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
           
            child: ListView(
              
              children: <Widget>[
                _buildTopHeader(context,"Shipping Cost"),
                SizedBox(height:15),
                Padding(padding: EdgeInsets.symmetric(horizontal: 16.0)
                ,child: Column(children: <Widget>[
                    Text("You can calculate the cost of your shipment yourself",style: Theme.of(context).textTheme.title,textAlign: TextAlign.center,),
                    SizedBox(height:15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:16.0),
                      child: Divider(height: 3.0,color:Theme.of(context).primaryColor),

                    ),
                    SizedBox(height:15),
                    new Row(
                      children: <Widget>[
                        Expanded(child: _buildTextField("LOAD TYPE",context),),
                        SizedBox(width:15),
                        Expanded(child: _buildTextField("QUANTITY",context),),

                      ],
                    ),
                    SizedBox(height:15),
                    new Row(
                      children: <Widget>[
                        Expanded(child: _buildTextField("WEIGHT",context),),
                        SizedBox(width:15),
                        Expanded(child: _buildTextField("LENGTH",context), ),
                      ],
                    ),
                    SizedBox(height:15),
                    new Row(
                      children: <Widget>[

                        Expanded(child: _buildTextField("HEIGHT",context),),
                        SizedBox(width:15),
                        Expanded(child: _buildTextField("WIDTH",context),),
                      ],
                    ),

                  SizedBox(height:15),
                  _buildButton(context,"TOTAL (AUTO CALCULATE)"),
                  SizedBox(height:15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:16.0),
                    child: Divider(height: 3.0,color:Theme.of(context).primaryColor),
                  ),
                  SizedBox(height:15),
                  Container(

                    height: 40.0,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(30.0))

                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Cost",style:Theme.of(context).textTheme.display1 ,textAlign: TextAlign.center,),
                    ),),
                  ],),
                )

                ]),
                  ));
  }

  Widget _buildButton(BuildContext context, String text) {
    return new SizedBox(
      width: 300.0,
      height: 50.0,
      child: new RaisedButton(
        disabledColor: Theme.of(context).disabledColor,
        color: Theme.of(context).accentColor,
        splashColor: Theme.of(context).primaryColor,
        elevation: 100.0,
        child: new Text(text, style: Theme.of(context).textTheme.display1),
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(20.0)),
        onPressed: () {},
      ),
    );
  }


  Widget _buildTopHeader(BuildContext context,String title) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
          child: new IconButton(
              icon: Icon(Icons.menu, size: 32.0, color: Colors.white),
              onPressed: () => _scaffoldKey.currentState.openDrawer()),
        ),
        new Expanded(
          child: Center(
            child: new Text(title,
                style: Theme.of(context).textTheme.title),
          ),
        ),
      ],
    );
  }

  Widget _buildTextField(String text, BuildContext context) {
    return TextFormField(

      style: Theme.of(context).textTheme.display1,


      decoration: new InputDecoration(
        filled: true,
        fillColor:  Theme.of(context).primaryColor,
        contentPadding:
        const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
        enabledBorder: new OutlineInputBorder(
          borderSide:
          BorderSide(width: 3.0, color: Theme.of(context).primaryColor),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        focusedBorder: new OutlineInputBorder(

          borderSide:
          BorderSide(width: 3.0, color: Theme.of(context).splashColor),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        border: new OutlineInputBorder(
          borderSide:
          BorderSide(width: 2.0, color: Theme.of(context).primaryColor),
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        hintText: text,

        hintStyle: Theme.of(context).textTheme.display1,
      ),
    );
  }


}
