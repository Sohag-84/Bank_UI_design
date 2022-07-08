// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:bank_ui_design/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  String hintext;
  Icon icon;
  CustomTextField({Key? key, required this.hintext, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
          decoration: InputDecoration(
            hintText: hintext,
            prefixIcon: IconTheme(
              data: IconThemeData(color: AuthColors.iconColor),
              child: icon,
            ),
            prefixIconColor: AuthColors.iconColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AuthColors.textColor),
            ),
          ),
        ),
      ],
    );
  }
}
