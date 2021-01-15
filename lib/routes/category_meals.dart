import 'package:flutter/material.dart';
import 'package:worldtime/dummy_data.dart';
import 'package:worldtime/routes/meal_item.dart';

class CategoryMeals extends StatelessWidget {
  const CategoryMeals({Key key}) : super(key: key);

  ///final int id;
  //final String title;

  //CategoryMeals(this.id, this.title);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final title = routeArgs['title'];
    final id = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
              id: categoryMeals[index].id,
              complexity: categoryMeals[index].complexity,
              duration: categoryMeals[index].duration,
              imageURL:categoryMeals[index].imageURL ,
              title: categoryMeals[index].title);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
