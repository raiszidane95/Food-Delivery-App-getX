// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35.0),
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.all(30),
            child: Image.asset("assets/images/asset1.png"),
          ),
        ],
      ),
    );
  }
}
