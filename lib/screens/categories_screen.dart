import 'package:flutter/material.dart';
import 'package:ghana_meals/widgets/category_item.dart';
import 'package:ghana_meals/model/dummy_data.dart';
class Categories extends StatelessWidget {

  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ghana Meals'),),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3/2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
      ),
        children: DUMMY_CATEGORIES.
        map((catData) => CategoryItem(
          catData.id,
            catData.title,
            catData.color)).toList(),

      ),
    );
  }
}
