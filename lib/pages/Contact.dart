import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:phonicia/Widgets/build-top-header.dart';
import 'package:phonicia/Widgets/makeTextField.dart';
import '../drawer.dart';

class Contactus extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  static const String routeName = "/Contacts";
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
            BuildTopHeader("Contact Us", _scaffoldKey),
            SizedBox(height: 10.0,),
            Image.asset("assets/google.jpg"),
            SizedBox(height: 20.0,),
            MakeFieldText("Name"),
            SizedBox(
              height: 15.0,
            ),
            MakeFieldText("Email"),
            SizedBox(
              height: 15.0,
            ),
            MakeFieldText("Message"),
            SizedBox(
              height: 15.0,
            ),
            _buildButton(context, "Send"),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:16.0),
              child: Divider(height: 3.0,color:Theme.of(context).primaryColor),
            ),
            SizedBox(
              height: 20.0,
            ),
            Carousel()
          ],
        ),
      ),
    );
  }



  Widget _buildButton(BuildContext context, String text) {
    return
       Padding(
         padding: const EdgeInsets.symmetric(horizontal:110.0),
         child: new RaisedButton(
          disabledColor: Theme.of(context).disabledColor,
          color: Theme.of(context).primaryColor,
          splashColor: Theme.of(context).accentColor,
          elevation: 100.0,
          child: new Text(text, style: Theme.of(context).textTheme.display1),
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(5.0)),
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
}


class Carousel extends StatelessWidget {
  Carousel({Key key, this.title}) : super(key: key);

  final String title;

  List<MusicCardModel> cardsArr = [
    MusicCardModel(
        image: "assets/Dam.jpg" ,
        title: "Damascus",
        subtitle: "Freezone : 00963-11-6043 "
            "Alhariqa : 00963-11-2274355-6-7-8 "
            "victoria : 00963-11-2271127"),
    MusicCardModel(
        image: "assets/alleppo.jpg", title: "Aleppo", subtitle: "jamilia-etehad-street     sakhour-caroffice street    00963-961-199120"),
    MusicCardModel(
        image: "assets/Homs.jpg",
        title: "Homs",
        subtitle: "Abdelwaheb Azzam Street  00963-961-199108 00963-31-2222008"),
    MusicCardModel(
        image: "assets/Qam.jpg",
        title: "Qamishli",
        subtitle: "Kourneesh Street 00963-961-199120 00963-52-426433"),
    MusicCardModel(
        image: "assets/has.jpg",
        title: "Hasya",
        subtitle: "Kourneesh Street 00963-961-199120 00963-52-426433"),
    MusicCardModel(
        image: "assets/Suw.jpg",
        title: "As-Suwayda",
        subtitle: "Hamouri Street 00963-961-199089 00963-16-253360 Raha Street00963-16-380499"),
    MusicCardModel(
        image: "assets/Tar.jpg",
        title: "Tartus",
        subtitle: "Thawra Street - Cinema Sabee Buliding 00963-961-199078 00963-43-222125"),
    MusicCardModel(
        image: "assets/lat.jpg",
        title: "Lattakia",
        subtitle: "Lattakia City - Next to Alrejah Building 00963-961-199074 00963-41-592256"),
    MusicCardModel(
        image: "assets/jab.jpg",
        title: "Jableh",
        subtitle: "Amara - Fawar Street 00963-961-199073 00963-41-807740"),
    MusicCardModel(
        image: "assets/Ban.jpg",
        title: "Banias",
        subtitle: "Qadmus Street 00963-961-199078 00963-43-873088"),
    MusicCardModel(
        image: "assets/Der.jpg",
        title: "Deir ezzor",
        subtitle: "Bour Saeed Street 00963-961-199086 00963-51-328343"),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
              height: 300.0,
              child: HorizontalSlidingCards(cards: cardsArr)),
        ],
      ),
    );
  }
}

class HorizontalSlidingCards extends StatefulWidget {
  final List<MusicCardModel> cards;

  HorizontalSlidingCards({@required this.cards});
  @override
  _HorizontalSlidingCardsState createState() => _HorizontalSlidingCardsState();
}

class _HorizontalSlidingCardsState extends State<HorizontalSlidingCards>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  ScrollController _scrollController = new ScrollController();
  Animation<Offset> _animRtoLTop;
  Animation<Offset> _animRtoLBottom;
  Animation<Offset> _animLtoRTop;
  Animation<Offset> _animLtoRBottom;
  bool _swipeRightToLeft = true;
  int _currentIndex = 0;
  double _cardWidth = 300.0;
  double _cardMargin = 10.0;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));
    _animRtoLTop = Tween(begin: Offset(0.0, 0.0), end: Offset(50.0, 0.0))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut))
      ..addListener(() {
        setState(() {});
      });

    _animRtoLBottom = Tween(begin: Offset(0.0, 0.0), end: Offset(100.0, 0.0))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    _animLtoRTop = Tween(begin: Offset(0.0, 0.0), end: Offset(25.0, 0.0))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    _animLtoRBottom = Tween(begin: Offset(0.0, 0.0), end: Offset(-20.0, 0.0))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void _onHorizontalDragEnd(DragEndDetails details) {
    if (details.primaryVelocity < 0) {
      //SWIPED Right to Left!!

      if (_currentIndex < (widget.cards.length / 2) - 1) {
        setState(() {
          _swipeRightToLeft = true;
          _currentIndex += 1;
        });
        double offset = _cardWidth + _cardMargin;
        _scrollController.animateTo(offset * _currentIndex,
            duration: Duration(milliseconds: 400), curve: Curves.easeOut);

        _controller.forward().then((s) {
          _controller.reverse();
        });
      }
    } else if (details.primaryVelocity > 0) {
      //SWIPED Left to Right!
      if (_currentIndex > 0) {
        setState(() {
          _swipeRightToLeft = false;
          _currentIndex -= 1;
        });
        double offset = _cardWidth + _cardMargin;
        _scrollController.animateTo(offset * _currentIndex,
            duration: Duration(milliseconds: 400), curve: Curves.easeOut);

        _controller.forward().then((s) {
          _controller.reverse();
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: _onHorizontalDragEnd,
      child: ListView(
          physics: NeverScrollableScrollPhysics(),
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          children: _renderCards()),
    );
  }

  List<Widget> _renderCards() {
    List<Widget> children = [];
    for (int i = 0; i < widget.cards.length; i = i + 2) {
      List<Widget> col = [];
      if (widget.cards[i] != null) {
        var currentCard = widget.cards[i];
        col.add(Transform.translate(
          offset: _getOffsetValue(i),
          child: MusicCard(
            width: _cardWidth,
            margin: _cardMargin,
            title: currentCard.title,
            subtitle: currentCard.subtitle,
            image: currentCard.image,
          ),
        ));
      }

      if (i + 1 < widget.cards.length) {
        var currentCard = widget.cards[i + 1];
        col.add(Transform.translate(
          offset: _getOffsetValue(i + 1),
          child: MusicCard(
            width: _cardWidth,
            margin: _cardMargin,
            title: currentCard.title,
            subtitle: currentCard.subtitle,
            image: currentCard.image,
          ),
        ));
      }
      children.add(Column(
        children: col,
      ));
    }

    return children;
  }

  _getOffsetValue(int i) {
    if (_swipeRightToLeft) {
      if (_currentIndex * 2 == i) {
        return _animRtoLTop.value;
      } else if (_currentIndex * 2 + 1 == i) {
        return _animRtoLBottom.value;
      }
    } else {
      if ((_currentIndex + 1) * 2 == i) {
        return _animLtoRTop.value;
      } else if ((_currentIndex + 1) * 2 + 1 == i) {
        return _animLtoRBottom.value;
      }
    }

    return Offset(0.0, 0.0);
  }
}

class MusicCard extends StatelessWidget {
  final double width;
  final double margin;
  final String title;
  final String subtitle;
  final String image;

  MusicCard({this.width, this.margin, this.title, this.subtitle, this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Theme.of(context).primaryColor.withOpacity(0.8),width: 1)
      ),
      margin: EdgeInsets.symmetric(vertical: 3.0, horizontal: margin / 2),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Container(
                width: 90,
                height:90,
                child:Image.asset(image,fit: BoxFit.fitHeight,)
            ),
            SizedBox(width: 10,),
            SizedBox(
              width:170,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(this.title, style: Theme.of(context).textTheme.display1),
                  Text(
                      this.subtitle,style: Theme.of(context).textTheme.body1
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MusicCardModel {
  String title;
  String subtitle;
  String image;

  MusicCardModel(
      {@required this.title, @required this.subtitle, @required this.image});
}

class Swatch {
  Swatch._();

  static Color backgroundColor = Color(0xAA2C396B);
}
