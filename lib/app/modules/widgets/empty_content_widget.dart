import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmptyContentWidget extends StatelessWidget {
  const EmptyContentWidget(
      {super.key,
      required this.tittleText,
      required this.messageText,
      required this.asset});

  final String tittleText;
  final String messageText;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(asset),
        Text(
          tittleText,
          style: TextStyle(
              fontFamily: 'SF Pro', fontSize: 28, fontWeight: FontWeight.w600),
        ),
        Text(
          messageText,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'SF Pro',
            fontSize: 17,
          ),
        ),
      ],
    );
  }
}
