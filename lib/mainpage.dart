import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => new _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return new Material(
      borderRadius: new BorderRadius.circular(8.0),
      child: new Scaffold(
        appBar: new AppBar(
          elevation: 0.0,
          centerTitle: false,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Text('Games',
              style: Theme.of(context).textTheme.title,
          )
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
