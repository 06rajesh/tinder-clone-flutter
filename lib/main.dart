import 'package:flutter/material.dart';
import 'package:ui_tuts_cards/cards.dart';
import 'package:ui_tuts_cards/matches.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primaryColorBrightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(title: 'Near By'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  DateMatch match = new DateMatch();

  Widget _buildAppBar() {
    return new AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: IconButton(
        icon: new Icon(
          Icons.person,
          color: Colors.black,
          size: 40.0,
        ),
        onPressed: () {},
      ),
      title: new Center(child: new FlutterLogo(size: 30.0, colors: Colors.red)),
      actions: <Widget>[
        new IconButton(
            icon: new Icon(
              Icons.chat_bubble,
              color: Colors.grey,
              size: 40.0,
            ),
            onPressed: () {})
      ],
    );
  }

  Widget _buildBottomBar() {
    return BottomAppBar(
      color: Colors.transparent,
      elevation: 0.0,
      child: new Padding(
        padding: const EdgeInsets.all(16.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new RoundIconButton.small(
              icon: Icons.refresh,
              iconColor: Colors.orange,
              onPressed: () {},
            ),
            new RoundIconButton.large(
              icon: Icons.clear,
              iconColor: Colors.red,
              onPressed: () {
                match.nope();
              },
            ),
            new RoundIconButton.small(
              icon: Icons.star,
              iconColor: Colors.blue,
              onPressed: () {
                match.superLike();
              },
            ),
            new RoundIconButton.large(
              icon: Icons.favorite,
              iconColor: Colors.green,
              onPressed: () {
                match.like();
              },
            ),
            new RoundIconButton.small(
              icon: Icons.lock,
              iconColor: Colors.purple,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: _buildAppBar(),
      body: new DraggableCard(
        match: match
      ),
      bottomNavigationBar: _buildBottomBar(),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final double size;
  final VoidCallback onPressed;

  RoundIconButton.large({this.icon, this.iconColor, this.onPressed})
      : size = 60.0;

  RoundIconButton.small({this.icon, this.iconColor, this.onPressed})
      : size = 50.0;

  RoundIconButton({this.icon, this.iconColor, this.size, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          new BoxShadow(color: const Color(0x11000000), blurRadius: 10.0),
        ],
      ),
      child: new RawMaterialButton(
          shape: new CircleBorder(),
          elevation: 0.0,
          child: new Icon(icon, color: iconColor),
          onPressed: onPressed
      ),
    );
  }
}
