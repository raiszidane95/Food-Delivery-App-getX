import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../utilities/color_schema.dart';
import '../../widgets/food_widget.dart';
import '../controllers/home_controller.dart';

class HomePageView extends GetView<HomeController> {
  const HomePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Delicious \nfood for you",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              //To add some elevation & border radius to text field need to wrap in Material
              InkWell(
                onTap: () {
                  Get.offAllNamed(Routes.SEARCH);
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[100],
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search_sharp,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Search')
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              DefaultTabController(
                length: 4,
                child: Expanded(
                  child: Column(
                    children: [
                      TabBar(
                        indicatorColor: deepOrange800,
                        labelColor: deepOrange800,
                        unselectedLabelColor: grey500,
                        labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                        tabs: [
                          Tab(
                            text: "Food",
                          ),
                          Tab(
                            text: "Drinks",
                          ),
                          Tab(
                            text: "Snacks",
                          ),
                          Tab(
                            text: "Sauce",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "see more",
                              style:
                                  TextStyle(fontSize: 16, color: deepOrange800),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                          child: TabBarView(clipBehavior: Clip.none, children: [
                        Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              InkWell(
                                onTap: () => Get.toNamed(Routes.DETAIL_PRODUCT),
                                child: FoodCardWidget(
                                    image: "assets/image/food1.png",
                                    text: "Bubur ayam"),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () => Get.toNamed(Routes.DETAIL_PRODUCT),
                                child: FoodCardWidget(
                                    image: "assets/image/food1.png",
                                    text: "Bubur ayam"),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () => Get.toNamed(Routes.DETAIL_PRODUCT),
                                child: FoodCardWidget(
                                    image: "assets/image/food1.png",
                                    text: "Bubur ayam"),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () => Get.toNamed(Routes.DETAIL_PRODUCT),
                                child: FoodCardWidget(
                                    image: "assets/image/food1.png",
                                    text: "Bubur ayam"),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () => Get.toNamed(Routes.DETAIL_PRODUCT),
                                child: FoodCardWidget(
                                    image: "assets/image/food1.png",
                                    text: "Bubur ayam"),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              InkWell(
                                onTap: () => Get.toNamed(Routes.DETAIL_PRODUCT),
                                child: FoodCardWidget(
                                    image: "assets/image/food1.png",
                                    text: "Bubur ayam"),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () => Get.toNamed(Routes.DETAIL_PRODUCT),
                                child: FoodCardWidget(
                                    image: "assets/image/food1.png",
                                    text: "Bubur ayam"),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () => Get.toNamed(Routes.DETAIL_PRODUCT),
                                child: FoodCardWidget(
                                    image: "assets/image/food1.png",
                                    text: "Bubur ayam"),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () => Get.toNamed(Routes.DETAIL_PRODUCT),
                                child: FoodCardWidget(
                                    image: "assets/image/food1.png",
                                    text: "Bubur ayam"),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              InkWell(
                                onTap: () => Get.toNamed(Routes.DETAIL_PRODUCT),
                                child: FoodCardWidget(
                                    image: "assets/image/food1.png",
                                    text: "Bubur ayam"),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () => Get.toNamed(Routes.DETAIL_PRODUCT),
                                child: FoodCardWidget(
                                    image: "assets/image/food1.png",
                                    text: "Bubur ayam"),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () => Get.toNamed(Routes.DETAIL_PRODUCT),
                                child: FoodCardWidget(
                                    image: "assets/image/food1.png",
                                    text: "Bubur ayam"),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () => Get.toNamed(Routes.DETAIL_PRODUCT),
                                child: FoodCardWidget(
                                    image: "assets/image/food1.png",
                                    text: "Bubur ayam"),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              InkWell(
                                onTap: () => Get.toNamed(Routes.DETAIL_PRODUCT),
                                child: FoodCardWidget(
                                    image: "assets/image/food1.png",
                                    text: "Bubur ayam"),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () => Get.toNamed(Routes.DETAIL_PRODUCT),
                                child: FoodCardWidget(
                                    image: "assets/image/food1.png",
                                    text: "Bubur ayam"),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () => Get.toNamed(Routes.DETAIL_PRODUCT),
                                child: FoodCardWidget(
                                    image: "assets/image/food1.png",
                                    text: "Bubur ayam"),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () => Get.toNamed(Routes.DETAIL_PRODUCT),
                                child: FoodCardWidget(
                                    image: "assets/image/food1.png",
                                    text: "Bubur ayam"),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                        ),
                      ]))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: deepOrange800,
          unselectedItemColor: grey400,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: IconButton(
                onPressed: () => Get.toNamed(Routes.HOME),
                icon: Icon(
                  Icons.home,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "Favorite",
              icon: IconButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return Center(
                        child: Text('Favorite Page'),
                      );
                    },
                  ),
                ),
                icon: Icon(
                  Icons.favorite,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: IconButton(
                onPressed: () => Get.toNamed(Routes.PROFILE),
                icon: Icon(
                  Icons.person,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "History",
              icon: IconButton(
                onPressed: () => Get.toNamed(Routes.HISTORY),
                icon: Icon(
                  Icons.history,
                ),
              ),
            ),
          ],
        ));
  }
}
