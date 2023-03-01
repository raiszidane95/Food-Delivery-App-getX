import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../widget/list_card_food_widget.dart';

class SearchView extends StatelessWidget {
  SearchView({super.key});
  final foodList = [
    {'name': 'Veggoe Tomatto Mix', 'icon': 'assets/image/food1.png'},
    {'name': 'Egg and Cucumber..', 'icon': 'assets/image/food1.png'},
    {'name': 'Fried Chicken m.', 'icon': 'assets/image/food1.png'},
    {'name': 'Moi-moi and Ekpa', 'icon': 'assets/image/food1.png'},
    {'name': 'Bakpau', 'icon': 'assets/image/food1.png'},
    {'name': 'chuankie', 'icon': 'assets/image/food1.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Get.offAllNamed(Routes.HOME);
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
            decoration:
                const InputDecoration(border: InputBorder.none, hintText: ""),
            // focusNode: FocusNode().,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 30,
              margin: const EdgeInsets.only(top: 30.0),
              child: const Center(
                child: Text(
                  "Found 6 Result",
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
                top: 120.0,
              ),
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 50,
                children: [
                  ...foodList.map((e) {
                    return ListCardFood(
                        image: "assets/image/food1.png",
                        text: "Vegie tomato mix");
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
