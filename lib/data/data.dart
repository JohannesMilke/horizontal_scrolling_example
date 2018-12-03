import 'package:advent3_horizontal_scrolling/model/animal.dart';

final List<Animal> animals = [
  Animal(
    title: 'Colorful birds',
    image: 'images/image1.jpg',
  ),
  Animal(
    title: 'Africa\'s animals',
    image: 'images/image2.jpg',
  ),
  Animal(
    title: 'Nashorn',
    image: 'images/image3.jpg',
  ),
  Animal(
    title: 'Big Buffalo',
    image: 'images/image4.jpg',
  ),
  Animal(
    title: 'Two Zebra\'s',
    image: 'images/image5.jpg',
  ),
];

final animalsReduced = animals.getRange(0, 1);
