// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/color.dart';

class CustomTransaction extends StatelessWidget {
  final IconData icon;
  final text;
  Color bgColor;
  double radius;
  Color textColor;
  CustomTransaction(
      {Key? key,
      required this.icon,
      required this.text,
      required this.bgColor,
      required this.radius,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
      child: Row(
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: radius, //35
                backgroundColor: bgColor,
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 30.h,
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: textColor,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
