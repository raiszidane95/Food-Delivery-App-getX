import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/appbar_empty_screen.dart';
import '../../widgets/empty_content_widget.dart';
import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffEDEDED),
        body: Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const AppbarEmptyScreen(appBarTitle: 'History'),
              const Spacer(),
              const EmptyContentWidget(
                  tittleText: 'No History',
                  messageText:
                      'Hit the orange button down \nbelow to Create an order',
                  asset: "assets/images/history_image.svg"),
              const Spacer(),
              Container(
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
                          onPressed: () => Get.back(),
                          child: Text(
                            'Start Ordering',
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
            ],
          ),
        ),
      ),
    );
  }
}
