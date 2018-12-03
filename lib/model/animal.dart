import 'package:meta/meta.dart';

@immutable
class Animal {
  final String title;
  final String image;

  const Animal({
    @required this.title,
    @required this.image,
  });
}
