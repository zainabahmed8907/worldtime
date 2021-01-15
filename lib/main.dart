import 'package:flutter/material.dart';
import 'package:worldtime/routes/category_meals.dart';
import 'package:worldtime/routes/category_route.dart';
import 'package:worldtime/routes/meal_details.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  const Main({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HappyMeals',
      theme: ThemeData(
        
        primaryColor: Colors.white,
        accentColor: Colors.black,
        canvasColor: Colors.white,
        textTheme: ThemeData.light().textTheme.copyWith(
          // ignore: deprecated_member_use
          title: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25
          )
        )
        ),
      home: Categories(),
      routes:{
        '/category-Meals':(ctxt)=>CategoryMeals(),
        '/meals-details':(ctxt)=>MealDetails()
      },
    );
    
  }
}
