import 'package:flutter/cupertino.dart';

enum Complexity { Simple, Challenging, Difficut }

class Meal {
  final String id;
  final String title;
  final List<String> ingredients;
  final List<String> steps;
  final List<String> categories;
  final int duration;
  final Complexity complexity;
  final String imageURL;
  final bool isSugarFree;
  final bool isCholestrolfree;

  const Meal(
      {@required this.imageURL,
      @required this.id,
      @required this.title,
      @required this.categories,
      @required this.ingredients,
      @required this.complexity,
      @required this.duration,
      @required this.steps,
      @required this.isCholestrolfree,
      @required this.isSugarFree});


}
