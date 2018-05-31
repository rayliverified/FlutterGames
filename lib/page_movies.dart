import 'package:flutter/material.dart';

class MoviesPage extends StatefulWidget {
  MoviesPage({Key key}) : super(key: key);

  @override
  _MoviesPageState createState() => new _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  @override
  Widget build(BuildContext context) {
    return new SingleChildScrollView(
      child: new Column(
        children: [
          new Text("Movies", style: Theme.of(context).textTheme.caption),
        ],
      ),
    );
  }
}
