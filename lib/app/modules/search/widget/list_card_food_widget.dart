import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../detail_product/views/detail_product_view.dart';

class ListCardFood extends StatelessWidget {
  const ListCardFood({
    Key? key,
    this.image = '',
    this.imageUrl = '',
    this.id = '',
    required this.text,
  }) : super(key: key);
  final String image, imageUrl, text, id;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => DetailProductView(), arguments: {'id': id});
        print(id);
      },
      child: Container(
        margin: EdgeInsets.only(top: 8.0),
        child: SizedBox(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 185,
                width: 130,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70.0),
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            text,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "N1,900",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: -45,
                left: 15,
                child: Container(
                  height: 100,
                  width: 100,
                  child: imageUrl == ''
                      ? CircleAvatar(backgroundImage: AssetImage(image))
                      : CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
