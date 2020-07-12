import 'package:flutter/material.dart';

class Carroussel extends StatefulWidget {
  @override
  _CarrousselState createState() => new _CarrousselState();
}

class _CarrousselState extends State<Carroussel> {
  PageController controller;
  int currentpage = 0;

  @override
  initState() {
    super.initState();
    controller = new PageController(
      initialPage: currentpage,
      keepPage: false,
      viewportFraction: 0.8,
    );
  }

  @override
  dispose() {
    controller.dispose();
    super.dispose();
  }
  int i=0;
  final List<Widget> _pages = <Widget>[
    new Container(
      margin: EdgeInsets.all(8.0),
      decoration: new BoxDecoration(
        color: Color.fromRGBO(255, 193, 7, 0.8),
        image: new DecorationImage(
          colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.3), BlendMode.dstATop),
          image: new AssetImage("assets/background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text("dfs"),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "It is a company that is based on the principle of providing typical logistics services,"
                  " providing the best professional and personal services,"
                  " the full adaptation of the specific requirements of each customer,"
                  " using of high standards in providing of improved services,"
                  " in addition to the high flexibility of the deadlines.",
            ),
          ),
        ],
      ),
    ),
    new Container(
        margin: EdgeInsets.all(8.0),
        decoration: new BoxDecoration(
          color: Color.fromRGBO(255, 193, 7, 0.8),
          image: new DecorationImage(
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.dstATop),
            image: new AssetImage("assets/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text("dfs"),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                  "It is a company that is based on the principle of providing typical logistics services,"
                      " providing the best professional and personal services,"
                      " the full adaptation of the specific requirements of each customer,"
                      " using of high standards in providing of improved services,"
                      " in addition to the high flexibility of the deadlines.",
                  ),
            ),
          ],
        ),
      ),
    new Container(
      margin: EdgeInsets.all(8.0),
      decoration: new BoxDecoration(
        color: Color.fromRGBO(255, 193, 7, 0.8),
        image: new DecorationImage(
          colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.3), BlendMode.dstATop),
          image: new AssetImage("assets/background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text("dfs"),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "It is a company that is based on the principle of providing typical logistics services,"
                  " providing the best professional and personal services,"
                  " the full adaptation of the specific requirements of each customer,"
                  " using of high standards in providing of improved services,"
                  " in addition to the high flexibility of the deadlines.",
            ),
          ),
        ],
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentpage = value;
                });
              },
              controller: controller,
              itemCount: 4,
              itemBuilder: (context, itemCount) => builder(itemCount));
  }

  builder(int index) {
    return new AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          double value = 1.0;
          if (controller.position.haveDimensions) {
            value = controller.page - index;
            value = (1 - (value.abs() * .5)).clamp(0.0, 1.0);
          }

          return new Center(
            child: new SizedBox(
              height: Curves.easeOut.transform(value) * 300,
              width: Curves.easeOut.transform(value) * 300,
              child: _pages[index % _pages.length]),
          );
        },
        child: new Container(
          margin: EdgeInsets.all(8.0),
          decoration: new BoxDecoration(
            color: Theme.of(context).primaryColor.withOpacity(0.8),
            image: new DecorationImage(
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.dstATop),
              image: new AssetImage("assets/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text("dfs",style:Theme.of(context).textTheme.display1),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                    "It is a company that is based on the principle of providing typical logistics services,"
                        " providing the best professional and personal services,"
                        " the full adaptation of the specific requirements of each customer,"
                        " using of high standards in providing of improved services,"
                        " in addition to the high flexibility of the deadlines.",
                    style: Theme
                        .of(context)
                        .textTheme
                        .body1),
              ),
            ],
          ),
        ));
  }
}
