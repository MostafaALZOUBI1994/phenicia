import 'package:flutter/material.dart';
import 'package:phonicia/pages/Contact.dart';
import 'package:phonicia/pages/Home.dart';
import 'package:phonicia/pages/Services.dart';
import 'package:phonicia/pages/Shipping_Cost.dart';
import 'package:phonicia/pages/Tracking.dart';
import 'package:phonicia/pages/Tracking_App.dart';
import 'package:phonicia/pages/about.dart';
class makeDrawer extends StatefulWidget {
  @override
  _makeDrawerState createState() =>_makeDrawerState();
}

class _makeDrawerState extends State<makeDrawer>{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(33, 33, 33, 1.0),
      child: ListView(
        children: <Widget>[
          DrawerHeader(child: Image.asset("assets/phoenicia.png"),),
          Divider(height: 1.0,color:Theme.of(context).primaryColor),
          _buildListTile("Home", Icons.home, context,Home.routeName),
          _buildListTile("About Us", Icons.info, context,About.routeName),
          _buildListTile("Services", Icons.call_to_action, context,Services.routeName),
          _buildListTile("Tracking", Icons.local_shipping, context,Tracking.routeName),
          _buildListTile("Tracking App", Icons.settings_applications, context,TrackingApp.routeName),
          _buildListTile("Contact", Icons.call, context,Contactus.routeName),
          _buildListTile("Shipping Cost", Icons.attach_money, context,ShippingCost.routeName),
          _buildListTile("Arabic", Icons.language, context,Services.routeName)
        ],
      ),
    );
  }
  Widget _buildListTile(
      String label, IconData icon, BuildContext context,String fun) {
    return new ListTile(
      selected: true,
      onTap: () {
        setState(() {
          // pop closes the drawer
          Navigator.of(context).pop();
          // navigate to the route
          Navigator.of(context).pushNamed(fun);
        });
      },
      leading: new Icon(
        icon,
        color: Theme.of(context).primaryColor,
      ),
      title: new Text(
        label,
        style: Theme.of(context).textTheme.display1,
      ),
    );
  }
}
