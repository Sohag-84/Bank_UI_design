import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/color.dart';

class CustomCircle extends StatelessWidget {
  final IconData icon;
  final double radius;
  final Color color;
  const CustomCircle(
      {Key? key, required this.icon, required this.radius, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: InkWell(
        onTap: () => Get.back(),
        child: CircleAvatar(
          backgroundColor: AuthColors.iconColor,
          radius: radius,
          child: Center(
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
