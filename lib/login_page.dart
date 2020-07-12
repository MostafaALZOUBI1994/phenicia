import 'package:flutter/material.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'package:phonicia/pages/Home.dart';
import 'package:phonicia/pages/home_page.dart';
import 'model/user.dart';


enum FormMode { LOGIN, SIGNUP }
class LoginPage extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<LoginPage> {
  Widget FormCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:28.0),
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: Theme.of(context).primaryColor,width: 1),
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
        child: Form(

          child: Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Login",
                    style: Theme.of(context).textTheme.title),
                SizedBox(height:15),
                Text("Email",
                    style: Theme.of(context).textTheme.body1),
                TextFormField(
                  maxLines: 1,
                  keyboardType: TextInputType.emailAddress,
                  autofocus: false,
                  decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: Theme.of(context).textTheme.body1,
                      icon: const Icon(
                        Icons.mail,
                        color:Color.fromRGBO(255, 193, 7, 1.0)
                      )),
                  validator: (value) => value.isEmpty ? 'Email can\'t be empty' : null,

                ),
                SizedBox(height: 15),
                Text("PassWord", style: Theme.of(context).textTheme.body1),
                TextFormField(
                  maxLines: 1,
                  obscureText: true,
                  autofocus: false,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: Theme.of(context).textTheme.body1,
                      icon: const Icon(
                        Icons.lock,
                        color: Color.fromRGBO(255, 193, 7, 1.0)
                      )),
                  validator: (value) => value.isEmpty ? 'Password can\'t be empty' : null,

                ),
                SizedBox(height:25),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget buidLogo(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          "assets/phoenicia.png",
          fit: BoxFit.cover,
        ),
      ],
    );
  }
  Widget buildLoginButton(){
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).canvasColor
            ]),
            borderRadius: BorderRadius.circular(6.0),
            ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            child: Center(
                child:Text("Login",
                    style: Theme.of(context).textTheme.body1)
            ),
          ),
        ),
      ),
    );
  }
  Widget buildLoginAsGuest(){
    return FlatButton(
      child:Text('Login as a Guest',
          style: TextStyle(fontSize: 20,color: Colors.white.withOpacity(0.8)),
      ),
      onPressed: null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Container(
        decoration: new BoxDecoration(
          color: Color.fromRGBO(0, 0, 0, 0.8),
          image: new DecorationImage(
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.2),
                BlendMode.dstATop
            ),
            image:  new AssetImage("assets/Phoenicia2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child:ListView(
          children: <Widget>[
            SizedBox(height:200),
            buidLogo(),
            SizedBox(height: 30),
            FormCard(),
            SizedBox(height: 15),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal:75.0),
                child:InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder:(context)=>Home()
                    ));
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Theme.of(context).primaryColor
                    ),
                    child: Center(
                      child: Text("Login",
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ),
                  ),
                )
            ),
            buildLoginAsGuest(),
          ],
        ),
      ),
    );
  }


}