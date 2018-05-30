import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'item_game.dart';

class HorizontalGameController extends StatelessWidget {

  HorizontalGameController(this.gameItems);
  final List<String> gameItems;

  @override
  Widget build(BuildContext context) {

    return new SizedBox.fromSize(
      size: const Size.fromHeight(250.0),
      child: new ListView.builder(
          itemCount: gameItems.length,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 12.0),
          itemBuilder: (BuildContext context, int position) {
            return GameItem(context, gameItems[position]);
          }
      ),
    );
  }
}
