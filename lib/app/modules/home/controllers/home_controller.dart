import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../../data/meal_services.dart';
import '../models/meals_models.dart';

class HomeController extends GetxController {
  final dio = Dio();
  RxBool isLoading = false.obs;
  RxList<Meal> listMeal = <Meal>[].obs;
  final mealService = MealService();

  @override
  void onInit() {
    super.onInit();
    getListMeals();
  }

  getListMeals() async {
    isLoading(true);
    try {
      var response = await mealService.getMeals();
      listMeal.addAll(response.meals);
      isLoading(false);
    } catch (e) {
      isLoading(false);
      Get.snackbar('Error', e.toString());
    }
  }
}
