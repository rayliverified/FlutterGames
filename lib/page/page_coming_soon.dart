import 'package:flutter/material.dart';

class ComingSoonPage extends StatefulWidget {
  ComingSoonPage(this.icon, {Key key}) : super(key: key);

  final IconData icon;

  @override
  _ComingSoonPageState createState() => _ComingSoonPageState();
}

class _ComingSoonPageState extends State<ComingSoonPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(widget.icon, color: Colors.black26, size: 96.0),
          Padding(padding: EdgeInsets.only(bottom: 36.0)),
          Text('Coming soon!', style: Theme.of(context).textTheme.subhead),
          Padding(padding: EdgeInsets.only(bottom: 8.0)),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 64.0),
            child: Text("We're working hard on new features. Check back often!",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .display1
                    .apply(color: Colors.black54)),
          ),
        ],
      ),
    );
  }
}
