import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_games/bottom_menu_items.dart';
import 'package:flutter_games/icons.dart';
import 'package:flutter_games/page/page_coming_soon.dart';
import 'package:flutter_games/page/page_games.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  BottomMenu _layoutSelection = BottomMenu.games;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(8),
      clipBehavior: Clip.hardEdge,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: false,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              Text(
                menuItemName(_layoutSelection),
                style: Theme.of(context).textTheme.title,
              ),
              Padding(padding: EdgeInsets.only(right: 8)),
              Icon(menuIcon(_layoutSelection), size: 28, color: Colors.black),
            ],
          ),
          actions: <Widget>[
            Center(
              child: IconButton(
                  onPressed: () => {},
                  icon: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Icon(Icons.shopping_cart,
                            size: 28, color: Colors.black),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.green,
                          child: Text("0",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10)),
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
        bottomNavigationBar: CupertinoTabBar(
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
    return _layoutSelection == bottomMenu ? iconSelected : icon;
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
