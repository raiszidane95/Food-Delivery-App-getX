import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skeletons/skeletons.dart';

import '../../../routes/app_pages.dart';
import '../../widgets/cta_button_widget.dart';
import '../controllers/detail_product_controller.dart';

Color _iconColor = Colors.redAccent;
bool _selectedIndex = true;
int position = 1;

@override
class DetailProductView extends GetView<DetailProductController> {
  // var image = Get.arguments[0];
  // var text = Get.arguments[1];
  final DetailProductController detailProductController =
      Get.put(DetailProductController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffEDEDED),
        body: Obx(
          () => ListView(
            children: [
              controller.isLoading.value
                  ? SkeletonParagraph()
                  : Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () => Get.back(),
                                icon: Icon(
                                  Icons.arrow_back_ios_new,
                                  size: 20,
                                  color: Colors.black,
                                ),
                              ),
                              Expanded(
                                child: ListTile(
                                  trailing: IconButton(
                                      icon: Icon(
                                        Icons.favorite,
                                        color: _iconColor,
                                      ),
                                      onPressed: () {}),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                            height: 275,
                            width: 275,
                            child: Image.network(
                                controller.detailMeal.value?.strMealThumb ??
                                    '')),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 10),
                          child: Text(
                            controller.detailMeal.value?.strMeal ?? '',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 28,
                                fontFamily: 'SF Pro',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            controller.detailMeal.value?.strCategory ?? '',
                            style: TextStyle(
                                color: Color(0xffFA4A0C),
                                fontSize: 22,
                                fontFamily: 'SF Pro',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 21.5),
                                child: Text(
                                  'Delivery info',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: 'SF Pro',
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Container(
                                child: Text(
                                    'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm'),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text(
                                  'Return policy',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: 'SF Pro',
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Container(
                                child: Text(
                                    'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Ctabutton(
                                  textTitle: 'Add to cart',
                                  routeDestination: Routes.CART,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
