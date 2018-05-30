import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HorizontalGameController extends StatelessWidget {

  HorizontalGameController(this.gameItems);
  final List<String> gameItems;

  @override
  Widget build(BuildContext context) {

    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        new SizedBox.fromSize(
          size: const Size.fromHeight(180.0),
          child: new ListView.builder(
            itemCount: gameItems.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 12.0),
            itemBuilder: (BuildContext context, int position) {
              return _buildPhoto(context, position);
            }
          ),
        ),
      ],
    );
  }

  _buildPhoto(BuildContext context, int position) {
    var photo = gameItems[position];

    return new Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: new ClipRRect(
        borderRadius: new BorderRadius.circular(4.0),
        child: new Image(
          image: new NetworkImage(photo),
          width: 120.0,
          height: 180.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
