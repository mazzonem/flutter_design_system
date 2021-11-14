import 'package:flutter/material.dart';

class TypographyPage extends StatelessWidget {
  const TypographyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TypographyDisplayTile('H1', Theme.of(context).textTheme.headline1),
        TypographyDisplayTile('Headline 2', Theme.of(context).textTheme.headline2),
        TypographyDisplayTile('Headline 3', Theme.of(context).textTheme.headline3),
        TypographyDisplayTile('Headline 4', Theme.of(context).textTheme.headline4),
        TypographyDisplayTile('Headline 5', Theme.of(context).textTheme.headline5),
        TypographyDisplayTile('Headline 6', Theme.of(context).textTheme.headline6),
        TypographyDisplayTile('Subtitle 1', Theme.of(context).textTheme.subtitle1),
        TypographyDisplayTile('Subtitle 2', Theme.of(context).textTheme.subtitle2),
        TypographyDisplayTile('Body 1', Theme.of(context).textTheme.bodyText1),
        TypographyDisplayTile('Body 2', Theme.of(context).textTheme.bodyText2),
        TypographyDisplayTile('Caption', Theme.of(context).textTheme.caption),
        TypographyDisplayTile('OVERLINE', Theme.of(context).textTheme.overline),
        TypographyDisplayTile('Button', Theme.of(context).textTheme.button),
      ],
    );
  }
}

class TypographyDisplayTile extends StatelessWidget {
  final String title;
  final TextStyle? textStyle;

  const TypographyDisplayTile(this.title, this.textStyle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(title, style: textStyle),
      children: [
        Row(
          children: [
            Expanded(
                child: Column(
              children: [Text('Font'), Text('${textStyle?.fontFamily}')],
            )),
            Expanded(
                child: Column(
              children: [Text('Weight'), Text('${textStyle?.fontWeight}')],
            )),
            Expanded(
                child: Column(
              children: [Text('Size'), Text('${textStyle?.fontSize}')],
            )),
            Expanded(
                child: Column(
              children: [Text('Letter Spacing'), Text('${textStyle?.letterSpacing}')],
            )),
          ],
        )
      ],
      // leading: Text('${Theme.of(context).textTheme.headline1}'),
    );
  }
}
