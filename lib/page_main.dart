import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'bottom_menu_items.dart';
import 'icons.dart';
import 'page_games.dart';
import 'page_movies.dart';
import 'page_coming_soon.dart';

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
          title: new Row(
            children: [
              Text(
                menuItemName(_layoutSelection),
                style: Theme.of(context).textTheme.title,
              ),
              new Padding(padding: new EdgeInsets.only(right: 8.0)),
              new Icon(menuIcon(_layoutSelection),
                  size: 28.0, color: Colors.black),
            ],
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
          backgroundColor: Colors.white70,
          items: <BottomNavigationBarItem>[
            _buildMenuItem(
                icon: controllerOutlineIcon,
                iconSelected: controllerIcon,
                bottomMenu: BottomMenu.games),
            _buildMenuItem(
                icon: movieOutlineIcon,
                iconSelected: movieIcon,
                bottomMenu: BottomMenu.movies),
            _buildMenuItem(
                icon: browseOutlineIcon,
                iconSelected: browseIcon,
                bottomMenu: BottomMenu.browse),
            _buildMenuItem(
                icon: profileOutlineIcon,
                iconSelected: profileIcon,
                bottomMenu: BottomMenu.my),
            _buildMenuItem(
                icon: moreOutlineIcon,
                iconSelected: moreIcon,
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
        return ComingSoonPage(menuIcon(_layoutSelection));
      case BottomMenu.browse:
        return ComingSoonPage(menuIcon(_layoutSelection));
      case BottomMenu.my:
        return ComingSoonPage(menuIcon(_layoutSelection));
      case BottomMenu.more:
        return ComingSoonPage(menuIcon(_layoutSelection));
    }
    return null;
  }

  BottomNavigationBarItem _buildMenuItem(
      {IconData icon, IconData iconSelected, BottomMenu bottomMenu}) {
    String text = menuItemName(bottomMenu);
    IconData setIcon = _setIconSelected(
        bottomMenu: bottomMenu, icon: icon, iconSelected: iconSelected);
    return BottomNavigationBarItem(
      icon: Icon(
        setIcon,
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

  IconData _setIconSelected(
      {BottomMenu bottomMenu, IconData icon, IconData iconSelected}) {
    return _layoutSelection == bottomMenu ? iconSelected: icon;
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
