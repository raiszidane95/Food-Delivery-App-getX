import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/auth_controller.dart';
import 'login_signup_view.dart';

class AuthView extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 191,
          backgroundColor: Color(0xffffffff),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          title: Align(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/asset1.png',
              fit: BoxFit.cover,
            ),
          ),
          bottom: TabBar(
            padding: EdgeInsets.symmetric(horizontal: 50),
            indicatorColor: Color(0xffFA4A0C),
            labelColor: Colors.black,
            labelStyle: TextStyle(
                fontSize: 20.0,
                fontFamily: 'SF Pro',
                fontWeight: FontWeight.w600), //For Selected tab
            unselectedLabelStyle: TextStyle(
                fontSize: 20.0,
                fontFamily: 'SF Pro',
                fontWeight: FontWeight.w600), //For Un-selected Tabs
            tabs: [
              Tab(
                text: 'Login',
              ),
              Tab(
                text: 'Sign Up',
              ),
            ],
          ),
        ),
        backgroundColor: const Color(0xffF6F6F9),
        body: SafeArea(
          child: Column(
            children: const [
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    Center(
                      child: LoginScreen(),
                    ),
                    Center(
                      child: Text('Sign Up'),
                    )
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
