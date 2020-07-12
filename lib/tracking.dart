import 'package:flutter/material.dart';

class track extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1.0),
          image: new DecorationImage(
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.4), BlendMode.darken),
            image: AssetImage('assets/track.jpg'),
            fit: BoxFit.fitHeight,


          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('assets/track.png',width: 200,height: 100,),


            Text( 'TRACK YOUR ORDER',style: TextStyle(fontSize: 25),textAlign: TextAlign.center,),
            SizedBox(
              height: 20,
            ),



            Text( 'ENTER YOUR TRACK ID FOR INSTANT SEARCH',style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
            SizedBox(
              height: 20,
            ),
            _buildTextField('TRACK ID', context)
          ],
        ),
      ),
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
