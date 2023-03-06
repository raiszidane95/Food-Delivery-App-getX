import 'package:get/get.dart';

import '../../../data/meal_services.dart';
import '../../detail_product/models/detail_meals_model.dart';

class SearchController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<Meal> listFood = <Meal>[].obs;
  final mealService = MealService();
  var searchList = <Meal>[].obs;

  @override
  void onInit() {
    super.onInit();
  }

  getListFood() async {
    isLoading(true);
    try {
      var response = await mealService.getListFood();
      listFood.addAll(response.meals as Iterable<Meal>);
      isLoading(false);
    } catch (e) {
      isLoading(false);
      Get.snackbar('Error', e.toString());
    }
  }

  void onTextChanged(String text) {
    searchList.clear();
    if (text.isEmpty) {
      listFood.forEach((element) {
        searchList.add(element);
      });
    } else {
      listFood.forEach((element) {
        if (element.strMeal!.toLowerCase().contains(text)) {
          searchList.add(element);
        }
        searchList.refresh();
      });
    }
  }
}
