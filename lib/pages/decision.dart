/*
import 'package:flutter/material.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';
import '../login_page.dart';
import 'home.dart';

class DecisionPage extends StatefulWidget {
  @override
  _DecisionPageState createState() => _DecisionPageState();
}

class _DecisionPageState extends State<DecisionPage> {
  String _parseServerState = 'Checking Parse Server...';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initParse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: new BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.8),
            image: new DecorationImage(

              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.2),
                  BlendMode.dstATop
              ),
              image:  new AssetImage("assets/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: <Widget>[
              _showLogo(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _showLogo() {
    return Hero(
      tag: 'hero',
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 70.0, 0.0, 0.0),
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 48.0,
          child: Image.asset('assets/phoenicia.png'),
        ),
      ),
    );
  }

  Future<void> _initParse() async {
    try {
      Parse().initialize("vphimxFspGB1gKzU1XpEJALeMrDH79PEpWchFysC", "https://parseapi.back4app.com/",
          masterKey: "j0Kpc2HBfkOhtI0jHmYe4zxJda1xFqw5PZ2Sx5cm", debug: true);
      final ParseResponse response = await Parse().healthCheck();
      if (response.success) {
        final ParseUser user = await ParseUser.currentUser();
        if (user != null) {
          _redirectToPage(context, Home());
        } else {
          _redirectToPage(context, LoginPage());
        }
      } else {
        setState(() {
          _parseServerState =
          'Parse Server Not avaiable\n due to ${response.error.toString()}';
        });
      }
    } catch (e) {
      setState(() {
        _parseServerState = e.toString();
      });
    }
  }

  Future<void> _redirectToPage(BuildContext context, Widget page) async {
    final MaterialPageRoute<bool> newRoute =
    MaterialPageRoute<bool>(builder: (BuildContext context) => page);

    bool nav = await Navigator.of(context)
        .pushAndRemoveUntil<bool>(newRoute, ModalRoute.withName('/'));
    if (nav == true) {
      _initParse();
    }
  }
}
 */