import 'package:flutter/material.dart';
import 'package:phonicia/Widgets/SocialIcons.dart';
import 'package:phonicia/login_page.dart';

import '../CustomIcons.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      child: Scaffold(
          body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter: new ColorFilter.mode(
                      Theme.of(context).primaryColorDark.withOpacity(1.0),
                      BlendMode.dstATop
                  ),
                  image: AssetImage('assets/Phoenicia2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    height: 120,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/phoenicia.png",
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SocialIcon(
                        color: Colors.white,
                        iconData: CustomIcons.facebook,
                        onPressed: () {},
                      ),
                      SocialIcon(
                        color: Colors.white,
                        iconData: CustomIcons.googlePlus,
                        onPressed: () {},
                      ),
                      SocialIcon(
                        color: Colors.white,
                        iconData: CustomIcons.twitter,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ))),
    );
  }
}
