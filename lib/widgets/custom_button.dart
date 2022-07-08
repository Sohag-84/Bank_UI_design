// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:bank_ui_design/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOnboardingButton extends StatelessWidget {
  String text;
  CustomOnboardingButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 55.h,
          width: 280.w,
          decoration: BoxDecoration(
              color: Colours.onboardingButtonColor,
              borderRadius: BorderRadius.circular(3.r)),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  String text;
  CustomButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50.h,
          width: 280.w,
          decoration: BoxDecoration(
            color: AuthColors.buttonColor,
            borderRadius: BorderRadius.circular(3.r),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ],
    );
  }
}
