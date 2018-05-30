import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'bottom_menu_items.dart';
import 'icons.dart';
import 'games_page.dart';
import 'movies_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => new _MainPageState();
}

class _MainPageState extends State<MainPage> {
  BottomMenu _layoutSelection = BottomMenu.games;

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
          title: Text(
            menuItemName(_layoutSelection),
            style: Theme.of(context).textTheme.title,
          ),
          actions: <Widget>[
            new Center(
              child: new IconButton(
                  onPressed: () => {},
                  icon: new Stack(
                    children: <Widget>[
                      new Align(
                        alignment: Alignment.center,
                        child: new Icon(Icons.shopping_cart,
                            size: 28.0, color: Colors.black),
                      ),
                      new Align(
                        alignment: Alignment.bottomRight,
                        child: new CircleAvatar(
                          radius: 8.0,
                          backgroundColor: Colors.green,
                          child: new Text("0",
                              style: new TextStyle(
                                  color: Colors.white, fontSize: 10.0)),
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
        bottomNavigationBar: new CupertinoTabBar(
          activeColor: Colors.blueAccent,
          items: <BottomNavigationBarItem>[
            _buildMenuItem(
                icon: controllerOutlineIcon, bottomMenu: BottomMenu.games),
            _buildMenuItem(
                icon: movieOutlineIcon, bottomMenu: BottomMenu.movies),
            _buildMenuItem(icon: browseOutlineIcon, bottomMenu: BottomMenu.browse),
            _buildMenuItem(
                icon: profileOutlineIcon, bottomMenu: BottomMenu.my),
            _buildMenuItem(
                icon: moreOutlineIcon,
                bottomMenu: BottomMenu.more),
          ],
          onTap: _onSelectMenuItem,
        ),
        body: _buildPage(),
        backgroundColor: Colors.white,
      ),
    );
  }

  Widget _buildPage() {
    switch (_layoutSelection) {
      case BottomMenu.games:
        return GamesPage();
      case BottomMenu.movies:
        return MoviesPage();
      case BottomMenu.browse:
        return GamesPage();
      case BottomMenu.my:
        return MoviesPage();
      case BottomMenu.more:
        return GamesPage();
    }
    return null;
  }

  BottomNavigationBarItem _buildMenuItem(
      {IconData icon, BottomMenu bottomMenu}) {
    String text = menuItemName(bottomMenu);
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
        color: _setMenuItemColor(bottomMenu: bottomMenu),
      ),
      title: Text(
        text,
        style: TextStyle(
          color: _setMenuItemColor(bottomMenu: bottomMenu),
        ),
      ),
    );
  }

  Color _setMenuItemColor({BottomMenu bottomMenu}) {
    return _layoutSelection == bottomMenu ? Colors.blueAccent : Colors.grey;
  }

  void _onSelectMenuItem(int index) {
    switch (index) {
      case 0:
        _onLayoutSelected(BottomMenu.games);
        break;
      case 1:
        _onLayoutSelected(BottomMenu.movies);
        break;
      case 2:
        _onLayoutSelected(BottomMenu.browse);
        break;
      case 3:
        _onLayoutSelected(BottomMenu.my);
        break;
      case 4:
        _onLayoutSelected(BottomMenu.more);
        break;
    }
  }

  void _onLayoutSelected(BottomMenu selection) {
    setState(() {
      _layoutSelection = selection;
    });
  }
}
