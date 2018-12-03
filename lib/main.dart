import 'package:advent3_horizontal_scrolling/data/data.dart';
import 'package:advent3_horizontal_scrolling/widget/animal_card.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String appTitle = 'HorizontalScrolling';
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: appTitle,
        theme: ThemeData(
          primaryColor: Colors.teal,
        ),
        home: MainPage(appTitle: appTitle),
      );
}

class MainPage extends StatelessWidget {
  final String appTitle;

  const MainPage({this.appTitle});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: animals
              .map((animal) => buildAnimalCard(context,
                  image: animal.image, title: animal.title))
              .toList(),
        ),
      );

  Widget buildAnimalCard(BuildContext context, {String image, String title}) =>
      FractionallySizedBox(
        heightFactor: 0.35,
        child: AnimalCard(
          image: image,
          title: title,
        ),
      );
}
