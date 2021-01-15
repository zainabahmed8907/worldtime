import 'package:flutter/material.dart';
import 'package:worldtime/dummy_data.dart';
//import './meals.dart';

class MealDetails extends StatelessWidget {
  //const MealDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final title = routeArgs['title'];

    final id = routeArgs['id'];
    final selectmeals = DUMMY_MEALS.firstWhere((meal)=>meal.id==id);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(children: <Widget>[
        Text("hi")
      ],)
      
    );
  }
}
