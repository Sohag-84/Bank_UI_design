// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/color.dart';
import '../constant/strings.dart';

class CustomContainer extends StatelessWidget {
  final image;
  String title;
  String balance;
  Color containerColor;
  Color titleColor;
  CustomContainer({
    Key? key,
    required this.image,
    required this.title,
    required this.balance,
    required this.containerColor,
    required this.titleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 89.h,
      width: 196.w,
      decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(10.r)),
      child: Padding(
        padding: EdgeInsets.only(
          left: 15.w,
          right: 15.w,
          top: 10.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      image,
                      height: 12.h,
                      width: 14.h,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 10.sp,
                        color: titleColor,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.remove_red_eye_outlined,
                  size: 10.5.h,
                )
              ],
            ),
            SizedBox(
              height: 5.w,
            ),
            Text(
              DashboardText.availableBalance,
              style: TextStyle(
                fontSize: 7.sp,
                fontWeight: FontWeight.w700,
                color: DashboardColor.availableBalanceColor,
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  balance,
                  style: TextStyle(
                    color: DashboardColor.balanceColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 22.sp,
                  ),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.arrow_forward,
                      color: DashboardColor.iconColor),
                  iconSize: 11.h,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
