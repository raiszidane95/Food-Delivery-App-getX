import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

import '../../../routes/app_pages.dart';
import '../../utilities/color_schema.dart';
import '../controllers/home_controller.dart';
import 'home_page.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  bool isOpened = false;

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
      onChange: (isOpened) {
        // setState(() => isOpened = isOpened);
      },
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: background,
            centerTitle: true,
            leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[500],
              ),
              onPressed: () => toggleMenu(),
            ),
            actions: [
              IconButton(
                  onPressed: () => Get.toNamed(Routes.CART),
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.grey[500],
                  ))
            ],
            title: Text(
              'Home',
              style: TextStyle(color: background),
            ),
          ),
          body: HomePageView()),
    );
  }

  Widget buildMenu() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 39),
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
                  onTap: () {
                    Get.toNamed(Routes.CART);
                  },
                  leading: Icon(
                    Icons.shopping_cart_checkout,
                    color: Colors.white,
                  ),
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
                  leading:
                      SvgPicture.asset('assets/icon/icon_privacy_policy.svg'),
                  title: const Text("Privacy Policy",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  textColor: Colors.white,
                  dense: true,
                ),
                dividerListTile(),
                ListTile(
                  onTap: () {},
                  leading: SvgPicture.asset('assets/icon/icon_security.svg'),
                  title: const Text("Security",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  textColor: Colors.white,
                  dense: true,
                ),
                const SizedBox(
                  height: 204,
                ),
                ListTile(
                  onTap: () {
                    Get.offAllNamed(Routes.AUTH);
                  },
                  title: Row(
                    children: [
                      const Text("Sign-out",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(Icons.arrow_forward,
                          size: 20.0, color: Colors.white)
                    ],
                  ),
                  textColor: Colors.white,
                  dense: true,
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
