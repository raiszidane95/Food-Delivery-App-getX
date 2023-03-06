import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/search_controller.dart';
import '../widget/list_card_food_widget.dart';

class SearchView extends GetView<SearchController> {
  final SearchController foodController = Get.put(SearchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: Container(
          padding: const EdgeInsets.all(8),
          child: TextFormField(
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
            onChanged: (value) {
              foodController.onTextChanged(value);
            },
            // focusNode: FocusNode().,
          ),
        ),
      ),
      body: Obx(
        () => SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 30,
                margin: const EdgeInsets.only(top: 30.0),
                child: Center(
                  child: Text(
                    "Found " +
                        foodController.searchList.length.toString() +
                        " Result",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 45.0,
                  top: 160.0,
                ),
                child: GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  mainAxisSpacing: 50,
                  children: [
                    ...foodController.searchList.map(
                      (item) {
                        return ListCardFood(
                          imageUrl: item.strMealThumb.toString(),
                          text: item.strMeal.toString(),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
