import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../widgets/appbar_empty_screen.dart';
import '../../widgets/cta_button_widget.dart';
import '../../widgets/empty_content_widget.dart';
import '../controllers/order_controller.dart';

class OrderView extends GetView<OrderController> {
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
              const AppbarEmptyScreen(appBarTitle: 'Orders'),
              const Spacer(),
              const EmptyContentWidget(
                  tittleText: 'No orders yet',
                  messageText:
                      'Hit the orange button down \nbelow to Create an order',
                  asset: "assets/images/cart_image.svg"),
              const Spacer(),
              const Ctabutton(
                  routeDestination: Routes.SEARCH, textTitle: 'Start Ordering')
            ],
          ),
        ),
      ),
    );
  }
}
