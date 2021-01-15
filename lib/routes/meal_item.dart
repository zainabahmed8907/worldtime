import 'package:flutter/material.dart';
import './meals.dart';
//import './meal_details.dart';
//import '../dummy_data.dart';

class MealItem extends StatelessWidget {
// const MealItem({Key key}) : super(key: key);
  final String id;
  final String title;
  final Complexity complexity;
  final String imageURL;
  final int duration;
  MealItem(
      {@required this.id,
      @required this.complexity,
      @required this.duration,
      @required this.imageURL,
      @required this.title});

  void getMealList(BuildContext ctx) {
  Navigator.of(ctx).pushNamed('/meals-details',arguments:{id:id});
  }

  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
      case Complexity.Difficut:
        return 'Difficult';
      case Complexity.Challenging:
        return 'Challenging';
      default:
        return 'unknown';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:()=> getMealList(context),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(
                    imageURL,
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    color: Colors.black26,
                    child: Text(
                      title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.schedule),
                      SizedBox(
                        width: 10,
                      ),
                      Text('$duration min'),
                      SizedBox(
                        width: 50,
                      ),
                      Icon(Icons.work),
                      SizedBox(
                        width: 10,
                      ),
                      Text(complexityText)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
