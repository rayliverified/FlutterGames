import 'package:flutter/material.dart';

class DescriptionText extends StatelessWidget {
  DescriptionText(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = Theme.of(context).textTheme;

    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        new Text(
          'Summary',
          style: textTheme.display1.apply(fontSizeDelta: 2.0),
        ),
        new Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: new Text(
            text,
            style: textTheme.body1,
          ),
        ),
        // No expand-collapse in this tutorial, we just slap the "more"
        // button below the text like in the mockup.
        new Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            new Text(
              'more',
              style: textTheme.display2.copyWith(color: theme.accentColor),
            ),
            new Icon(
              Icons.keyboard_arrow_down,
              size: 18.0,
              color: theme.accentColor,
            ),
          ],
        ),
      ],
    );
  }
}
