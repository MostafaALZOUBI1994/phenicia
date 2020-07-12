import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  Carousel({Key key, this.title}) : super(key: key);

  final String title;

  List<MusicCardModel> cardsArr = [
    MusicCardModel(
        image: "assets/image1.png",
        title: "AIR FREIGHT",
        subtitle: "Through a wide global network covering the four co"),
    MusicCardModel(
        image: "assets/image2.png", title: "OCEAN FREIGHT", subtitle: "We offer high quality Ocean transportation service"),
    MusicCardModel(
        image: "assets/image3.png",
        title: "ROAD FREIGHT",
        subtitle: "We provide quality logistic and transport services"),
    MusicCardModel(
        image: "assets/image4.png",
        title: "CUSTOMS CLEARANCE",
        subtitle: "We provide quality logistic and transport services"),
    MusicCardModel(
        image: "assets/image5.png",
        title: "INVESTMENT CONSULTING",
        subtitle: "We provide quality logistic and transport services"),
    MusicCardModel(
        image: "assets/image6.png",
        title: "STORAGE AND WAREHOUSES",
        subtitle: "We provide quality logistic and transport services"),
    MusicCardModel(
        image: "assets/image7.png",
        title: "FREIGHT FOR EXHIBITIONS",
        subtitle: "We provide quality logistic and..."),
    MusicCardModel(
        image: "assets/image8.png",
        title: "IMPORT AND EXPORT",
        subtitle: "We provide quality logistic and..."),
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
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.symmetric(vertical: 3.0, horizontal: margin / 2),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Container(
              width: 90,
              height:90,
              child:Image.asset(image,fit: BoxFit.contain,)
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
