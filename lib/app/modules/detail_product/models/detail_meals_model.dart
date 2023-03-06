// To parse this JSON data, do
//
//     final detailMealsModel = detailMealsModelFromJson(jsonString);

import 'dart:convert';

DetailMealsModel detailMealsModelFromJson(String str) =>
    DetailMealsModel.fromJson(json.decode(str));

String detailMealsModelToJson(DetailMealsModel data) =>
    json.encode(data.toJson());

class DetailMealsModel {
  DetailMealsModel({
    this.meals,
  });

  final List<Meal>? meals;

  factory DetailMealsModel.fromJson(Map<String, dynamic> json) =>
      DetailMealsModel(
        meals: json["meals"] == null
            ? []
            : List<Meal>.from(json["meals"]!.map((x) => Meal.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "meals": meals == null
            ? []
            : List<dynamic>.from(meals!.map((x) => x.toJson())),
      };
}

class Meal {
  Meal({
    this.idMeal,
    this.strMeal,
    this.strDrinkAlternate,
    this.strCategory,
    this.strArea,
    this.strInstructions,
    this.strMealThumb,
    this.strTags,
    this.strYoutube,
    this.strIngredient1,
    this.strIngredient2,
    this.strIngredient3,
    this.strIngredient4,
    this.strIngredient5,
    this.strIngredient6,
    this.strIngredient7,
    this.strIngredient8,
    this.strIngredient9,
    this.strIngredient20,
    this.strMeasure1,
    this.strMeasure2,
    this.strMeasure3,
    this.strMeasure4,
    this.strMeasure5,
    this.strMeasure6,
    this.strMeasure7,
    this.strMeasure8,
    this.strMeasure9,
    this.strSource,
    this.strImageSource,
    this.strCreativeCommonsConfirmed,
    this.dateModified,
  });

  final String? idMeal;
  final String? strMeal;
  final dynamic strDrinkAlternate;
  final String? strCategory;
  final String? strArea;
  final String? strInstructions;
  final String? strMealThumb;
  final String? strTags;
  final String? strYoutube;
  final String? strIngredient1;
  final String? strIngredient2;
  final String? strIngredient3;
  final String? strIngredient4;
  final String? strIngredient5;
  final String? strIngredient6;
  final String? strIngredient7;
  final String? strIngredient8;
  final String? strIngredient9;
  final dynamic strIngredient20;
  final String? strMeasure1;
  final String? strMeasure2;
  final String? strMeasure3;
  final String? strMeasure4;
  final String? strMeasure5;
  final String? strMeasure6;
  final String? strMeasure7;
  final String? strMeasure8;
  final String? strMeasure9;
  final dynamic strSource;
  final dynamic strImageSource;
  final dynamic strCreativeCommonsConfirmed;
  final dynamic dateModified;

  factory Meal.fromJson(Map<String, dynamic> json) => Meal(
        idMeal: json["idMeal"],
        strMeal: json["strMeal"],
        strDrinkAlternate: json["strDrinkAlternate"],
        strCategory: json["strCategory"],
        strArea: json["strArea"],
        strInstructions: json["strInstructions"],
        strMealThumb: json["strMealThumb"],
        strTags: json["strTags"],
        strYoutube: json["strYoutube"],
        strIngredient1: json["strIngredient1"],
        strIngredient2: json["strIngredient2"],
        strIngredient3: json["strIngredient3"],
        strIngredient4: json["strIngredient4"],
        strIngredient5: json["strIngredient5"],
        strIngredient6: json["strIngredient6"],
        strIngredient7: json["strIngredient7"],
        strIngredient8: json["strIngredient8"],
        strIngredient9: json["strIngredient9"],
        strIngredient20: json["strIngredient20"],
        strMeasure1: json["strMeasure1"],
        strMeasure2: json["strMeasure2"],
        strMeasure3: json["strMeasure3"],
        strMeasure4: json["strMeasure4"],
        strMeasure5: json["strMeasure5"],
        strMeasure6: json["strMeasure6"],
        strMeasure7: json["strMeasure7"],
        strMeasure8: json["strMeasure8"],
        strMeasure9: json["strMeasure9"],
        strSource: json["strSource"],
        strImageSource: json["strImageSource"],
        strCreativeCommonsConfirmed: json["strCreativeCommonsConfirmed"],
        dateModified: json["dateModified"],
      );

  Map<String, dynamic> toJson() => {
        "idMeal": idMeal,
        "strMeal": strMeal,
        "strDrinkAlternate": strDrinkAlternate,
        "strCategory": strCategory,
        "strArea": strArea,
        "strInstructions": strInstructions,
        "strMealThumb": strMealThumb,
        "strTags": strTags,
        "strYoutube": strYoutube,
        "strIngredient1": strIngredient1,
        "strIngredient2": strIngredient2,
        "strIngredient3": strIngredient3,
        "strIngredient4": strIngredient4,
        "strIngredient5": strIngredient5,
        "strIngredient6": strIngredient6,
        "strIngredient7": strIngredient7,
        "strIngredient8": strIngredient8,
        "strIngredient9": strIngredient9,
        "strIngredient20": strIngredient20,
        "strMeasure1": strMeasure1,
        "strMeasure2": strMeasure2,
        "strMeasure3": strMeasure3,
        "strMeasure4": strMeasure4,
        "strMeasure5": strMeasure5,
        "strMeasure6": strMeasure6,
        "strMeasure7": strMeasure7,
        "strMeasure8": strMeasure8,
        "strMeasure9": strMeasure9,
        "strSource": strSource,
        "strImageSource": strImageSource,
        "strCreativeCommonsConfirmed": strCreativeCommonsConfirmed,
        "dateModified": dateModified,
      };
}
