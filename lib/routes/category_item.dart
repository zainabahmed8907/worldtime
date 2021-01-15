import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  //const CategoryItem({Key key}) : super(key: key);
  final String id;
  final String title;
  final Color color;
  CategoryItem(this.id, this.title, this.color);
  //A page added to the navigation stack
  void selectCategory(BuildContext ctxt) {
    Navigator.of(ctxt).pushNamed('/category-Meals', arguments: {'id':id,'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      onTap: () => selectCategory(context),
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Text(title),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
