import 'package:flutter/material.dart';
import 'package:phonicia/login_page.dart';
import 'package:phonicia/pages/Contact.dart';
import 'package:phonicia/pages/Home.dart';
import 'package:phonicia/pages/Services.dart';
import 'package:phonicia/pages/Shipping_Cost.dart';
import 'package:phonicia/pages/Tracking.dart';
import 'package:phonicia/pages/Tracking_App.dart';
import 'package:phonicia/pages/about.dart';

void main() => runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Color.fromRGBO(255, 193, 7, 1.0),
      canvasColor:Color.fromRGBO(251, 196, 0, 1.0),
      accentColor: Color.fromRGBO(61, 61, 61, 1.0),
      primaryColorDark: Colors.black,
      backgroundColor: Color.fromRGBO(128, 97, 55, 1.0),
      appBarTheme: AppBarTheme(
          color: Colors.transparent
      ),
      textTheme: TextTheme(
        display1: TextStyle(fontSize: 20.0, color: Colors.white),
        display2: TextStyle(fontSize: 14.0, color: Colors.black),
        body1:TextStyle(fontSize: 12.0, color: Colors.white,),
        body2:TextStyle(fontSize: 12.0, color: Colors.black),
        title: TextStyle(fontSize: 26.0, color: Colors.white,),

      ),
      scaffoldBackgroundColor: Colors.white,
    ),
    home: LoginPage(),
    debugShowCheckedModeBanner: false,
    routes: <String, WidgetBuilder>
    {
      Home.routeName:  (BuildContext context) => new Home(),
      Services.routeName: (BuildContext context) => new Services(),
      About.routeName: (BuildContext context) => new About(),
      Tracking.routeName: (BuildContext context) => new Tracking(),
      TrackingApp.routeName: (BuildContext context) => new TrackingApp(),
      Contactus.routeName: (BuildContext context) => new Contactus(),
      ShippingCost.routeName: (BuildContext context) => new ShippingCost(),
    }
));
