import 'package:flutter/material.dart';
import 'package:worldtime/routes/category_item.dart';

import '../dummy_data.dart';

class Categories extends StatelessWidget {
  const Categories({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text("RizMeals"),
       centerTitle: true,
      ),
        body: GridView(
          padding: EdgeInsets.all(20.0),
        children: DUMMY_DATA.map((data)=>CategoryItem(data.id,data.title,data.color)).toList(),
        
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
      ),
    );
  }
}
