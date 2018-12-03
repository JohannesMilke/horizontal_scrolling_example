import 'package:flutter/material.dart';

class AnimalCard extends StatelessWidget {
  final String title;
  final String image;
  final double width;

  const AnimalCard({
    @required this.title,
    @required this.image,
    this.width = 300.0,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
      width: width,
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(child: buildTitle(context, title: title)),
              ],
            ),
            Expanded(child: buildImage()),
          ],
        ),
      ));

  Widget buildImage() => Image.asset(
        image,
        width: width,
        fit: BoxFit.cover,
      );

  Widget buildTitle(BuildContext context, {String title}) => Container(
        color: Colors.black,
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          title,
          style:
              Theme.of(context).textTheme.title.copyWith(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      );
}
