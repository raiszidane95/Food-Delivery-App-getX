// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Ctabutton extends StatelessWidget {
  const Ctabutton({
    Key? key,
    required this.textTitle,
    required this.routeDestination,
  }) : super(key: key);
  final String textTitle;
  final String routeDestination;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                onPressed: () => Get.toNamed(routeDestination),
                child: Text(
                  textTitle,
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
    );
  }
}
