// To parse this JSON data, do
//
//     final listFoodModel = listFoodModelFromJson(jsonString);

import 'dart:convert';

ListFoodModel listFoodModelFromJson(String str) =>
    ListFoodModel.fromJson(json.decode(str));

String listFoodModelToJson(ListFoodModel data) => json.encode(data.toJson());

class ListFoodModel {
  ListFoodModel({
    required this.meals,
  });

  final List<Meal> meals;

  factory ListFoodModel.fromJson(Map<String, dynamic> json) => ListFoodModel(
        meals: List<Meal>.from(json["meals"].map((x) => Meal.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "meals": List<dynamic>.from(meals.map((x) => x.toJson())),
      };
}

class Meal {
  Meal({
    required this.strMeal,
    required this.strMealThumb,
    required this.idMeal,
  });

  final String strMeal;
  final String strMealThumb;
  final String idMeal;

  factory Meal.fromJson(Map<String, dynamic> json) => Meal(
        strMeal: json["strMeal"],
        strMealThumb: json["strMealThumb"],
        idMeal: json["idMeal"],
      );

  Map<String, dynamic> toJson() => {
        "strMeal": strMeal,
        "strMealThumb": strMealThumb,
        "idMeal": idMeal,
      };
}
