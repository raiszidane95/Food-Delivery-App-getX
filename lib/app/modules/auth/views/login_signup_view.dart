// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 40),
                child: Text(
                  'Email Address',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                      fontFamily: 'SF Pro',
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 41,
                child: TextFormField(
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  cursorHeight: 24,
                ),
              ),
              SizedBox(
                height: 46,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Password',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                      fontFamily: 'SF Pro',
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 41,
                child: TextFormField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  cursorHeight: 24,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(vertical: 15),
                child: InkWell(
                  onTap: () {
                    print('Text Clicked');
                  },
                  child: Text(
                    'Forgot Passcode?',
                    style: TextStyle(
                        color: Color(0xfffa4a0c),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'SF Pro'),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 51),
                child: Container(
                  padding: EdgeInsets.only(top: 55),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          height: 70,
                          width: 314,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Color(0xffFA4A0C),
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.all(4),
                              textStyle: const TextStyle(fontSize: 16),
                            ),
                            onPressed: () => Get.offAllNamed(Routes.HOME),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontFamily: 'SF Pro',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
