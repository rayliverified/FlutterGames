import 'package:flutter/material.dart';

class GameItem extends StatelessWidget {

  GameItem(this.buildContext, this.photo);
  final BuildContext buildContext;
  final String photo;

  @override
  Widget build(BuildContext context) {

    return new Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: new Material(
        elevation: 8.0,
        shadowColor: new Color(0xCC000000),
        child: new ClipRRect(
          borderRadius: new BorderRadius.circular(4.0),
          child: new Image(
            image: new NetworkImage(photo),
            width: 120.0,
            height: 180.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
