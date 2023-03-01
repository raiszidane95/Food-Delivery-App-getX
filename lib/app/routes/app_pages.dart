import 'package:get/get.dart';

import 'package:food_delivery_getx/app/modules/tab_bar_login_signup/bindings/tab_bar_login_signup_binding.dart';
import 'package:food_delivery_getx/app/modules/tab_bar_login_signup/views/tab_bar_login_signup_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.TAB_BAR_LOGIN_SIGNUP,
      page: () => TabBarLoginSignupView(),
      binding: TabBarLoginSignupBinding(),
    ),
  ];
}
