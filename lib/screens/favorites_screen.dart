import 'package:flutter/material.dart';

import '../widgets/meal_item.dart';
import '../models/meal.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Scaffold(
        body: Center(
          child: Text('You have no favorites yet - start adding some!'),
        ),
      );
    } else {
      return Scaffold(
        body: ListView.builder(
          itemBuilder: (context, index) {
            Meal favoriteMeal = favoriteMeals[index];
            return MealItem(
              id: favoriteMeal.id,
              title: favoriteMeal.title,
              imageUrl: favoriteMeal.imageUrl,
              duration: favoriteMeal.duration,
              complexity: favoriteMeal.complexity,
              affordability: favoriteMeal.affordability,
            );
          },
          itemCount: favoriteMeals.length,
        ),
      );
    }
  }
}
