// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/color.dart';

class CustomTransaction extends StatelessWidget {
  final IconData icon;
  final text;
  const CustomTransaction({Key? key, required this.icon, required this.text})
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
                radius: 35,
                backgroundColor: DashboardColor.circleColor,
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
                  color: Colors.white,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
