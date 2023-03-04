import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:skeletons/skeletons.dart';

import '../../../routes/app_pages.dart';
import '../../cart/views/cart_view.dart';
import '../../history/views/history_view.dart';
import '../../profile/views/profile_view.dart';
import '../../search/views/search_view.dart';
import '../../widgets/food_widget.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final HomeController homeController = Get.put(HomeController());

  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
  toggleMenu([bool end = false]) {
    if (!end) {
      final state = _sideMenuKey.currentState!;
      if (state.isOpened) {
        state.closeSideMenu();
      } else {
        state.openSideMenu();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SideMenu(
        radius: BorderRadius.circular(30),
        key: _sideMenuKey,
        menu: buildMenu(),
        background: const Color(0xFFFA4A0C),
        type: SideMenuType.shrinkNSlide,
        onChange: (isOpened) {},
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0.0,
              centerTitle: true,
              leading: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onPressed: () => toggleMenu(),
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: IconButton(
                      onPressed: () {
                        Get.to(() => CartView());
                      },
                      icon: Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.grey[400],
                      )),
                )
              ],
            ),
            body: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
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
                  const SizedBox(
                    height: 20.0,
                  ),
                  //To add some elevation & border radius to text field need to wrap in Material
                  InkWell(
                    onTap: () {
                      Get.to(() => SearchView());
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
                  const SizedBox(
                    height: 30,
                  ),
                  DefaultTabController(
                    length: 4,
                    child: Expanded(
                      child: Column(
                        children: [
                          TabBar(
                            indicatorColor: Colors.orange,
                            labelColor: Colors.orange,
                            unselectedLabelColor: Colors.grey,
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
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.orange),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                              child: TabBarView(
                                  clipBehavior: Clip.none,
                                  children: [
                                Obx(
                                  () => Container(
                                    child: homeController.isLoading.value ==
                                            true
                                        ? SkeletonListView()
                                        : homeController.listMeal.isEmpty
                                            ? SizedBox()
                                            : ListView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                children: [
                                                  ...homeController.listMeal
                                                      .map(
                                                    (item) => Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 20),
                                                      child: FoodCardWidget(
                                                          image:
                                                              item.strMealThumb,
                                                          text: item.strMeal),
                                                    ),
                                                  )
                                                ],
                                              ),
                                  ),
                                ),
                                Container(
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      FoodCardWidget(
                                          image: "assets/images/food1.png",
                                          text: "Bubur ayam"),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      FoodCardWidget(
                                          image: "assets/images/food1.png",
                                          text: "Bubur ayam"),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      FoodCardWidget(
                                          image: "assets/images/food1.png",
                                          text: "Bubur ayam"),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      FoodCardWidget(
                                          image: "assets/images/food1.png",
                                          text: "Nasi padang"),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      FoodCardWidget(
                                          image: "assets/images/food1.png",
                                          text: "Nasi padang"),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      FoodCardWidget(
                                          image: "assets/images/food1.png",
                                          text: "Nasi padang"),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      FoodCardWidget(
                                          image: "assets/images/food1.png",
                                          text: "Es campur"),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      FoodCardWidget(
                                          image: "assets/images/food1.png",
                                          text: "Es campur"),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      FoodCardWidget(
                                          image: "assets/images/food1.png",
                                          text: "Es campur"),
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
              selectedItemColor: Colors.orange,
              unselectedItemColor: Colors.grey,
              items: [
                BottomNavigationBarItem(
                  label: "Home",
                  icon: IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                ),
                BottomNavigationBarItem(
                    label: "Favorite",
                    icon: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return Container(
                                  child: Text('Favorite Screens'),
                                );
                              },
                            ),
                          );
                        },
                        icon: Icon(Icons.favorite))),
                BottomNavigationBarItem(
                    label: "Profile",
                    icon: IconButton(
                        onPressed: () {
                          Get.to(() => ProfileView());
                        },
                        icon: Icon(Icons.person_outline))),
                BottomNavigationBarItem(
                    label: "History",
                    icon: IconButton(
                        onPressed: () {
                          Get.to(() => HistoryView());
                        },
                        icon: Icon(Icons.history))),
              ],
            )));
  }

  Widget buildMenu() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              children: [
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.account_circle_outlined,
                      size: 20.0, color: Colors.white),
                  title: const Text("Profile",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  textColor: Colors.white,
                  dense: true,
                ),
                dividerListTile(),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.local_offer_outlined,
                      size: 20.0, color: Colors.white),
                  title: const Text("Orders",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  textColor: Colors.white,
                  dense: true,
                ),
                dividerListTile(),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.local_offer_outlined,
                      size: 20.0, color: Colors.white),
                  title: const Text("Offers and Promo",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  textColor: Colors.white,
                  dense: true,
                ),
                dividerListTile(),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.local_offer_outlined,
                      size: 20.0, color: Colors.white),
                  title: const Text("Privacy Policy",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  textColor: Colors.white,
                  dense: true,
                ),
                dividerListTile(),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.local_offer_outlined,
                      size: 20.0, color: Colors.white),
                  title: const Text("Security",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  textColor: Colors.white,
                  dense: true,
                ),
                const SizedBox(
                  height: 204,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: GestureDetector(
                    onTap: () {
                      Get.offAllNamed(Routes.LOGIN);
                    },
                    child: Row(
                      children: [
                        const Text("Sign-out",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(Icons.arrow_forward,
                            size: 20.0, color: Colors.white)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget dividerListTile() {
    return const Divider(color: Color(0xFFF4F4F8), endIndent: 60, indent: 70);
  }
}

// class LOGINSIGNUP {}

// class ListFoodView {}
