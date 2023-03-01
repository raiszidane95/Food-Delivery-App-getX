import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppbarEmptyScreen extends StatelessWidget {
  const AppbarEmptyScreen({super.key, required this.appBarTitle});
  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(Icons.arrow_back_ios),
          ),
        ),
        Text(
          appBarTitle,
          style: TextStyle(
              fontFamily: 'SF Pro', fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Spacer(),
      ],
    );
  }
}
