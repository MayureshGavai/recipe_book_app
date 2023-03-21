import 'package:flutter/material.dart';
import 'package:recipe_app/models/category.dart';

class CategoryMeal extends StatelessWidget {
  final String categoryId;
  final String categoryTitle;

  CategoryMeal(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle + ' Recipes'),
      ),
      body: Center(
        child: Text('Recieiadwa dad'),
      ),
    );
  }
}
