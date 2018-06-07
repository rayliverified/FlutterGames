import 'package:flutter/material.dart';

class ComingSoonPage extends StatefulWidget {
  ComingSoonPage(this.icon, {Key key}) : super(key: key);

  final IconData icon;

  @override
  _ComingSoonPageState createState() => new _ComingSoonPageState();
}

class _ComingSoonPageState extends State<ComingSoonPage> {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Icon(widget.icon, color: Colors.black26, size: 96.0),
          new Padding(padding: new EdgeInsets.only(bottom: 36.0)),
          new Text('Coming soon!', style: Theme.of(context).textTheme.subhead),
          new Padding(padding: new EdgeInsets.only(bottom: 8.0)),
          new Container(
            margin: new EdgeInsets.symmetric(horizontal: 64.0),
            child: new Text(
                "We're working hard on new features. Check back often!",
                textAlign: TextAlign.center,
                style: Theme
                    .of(context)
                    .textTheme
                    .display1
                    .apply(color: Colors.black54)),
          ),
        ],
      ),
    );
  }
}
