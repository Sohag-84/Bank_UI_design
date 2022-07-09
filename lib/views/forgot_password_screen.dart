// ignore_for_file: prefer_const_constructors

import 'package:bank_ui_design/constant/strings.dart';
import 'package:bank_ui_design/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constant/color.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_circle.dart';
import '../widgets/custom_textField.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 10.h),
            child: Column(
              children: [
                CustomCircle(icon: Icons.arrow_back_outlined, radius: 15.r, color: AuthColors.iconColor),
                SizedBox(
                  height: 54.h,
                ),
                Center(
                  child: Image.asset(
                    "images/splash.png",
                    width: 94.w,
                    height: 86.h,
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  ForgotPasswordText.titleText,
                  style: TextStyle(
                    color: AuthColors.titleColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 30.sp,
                  ),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Text(
                  ForgotPasswordText.desctiptionText,
                  style: TextStyle(
                      color: AuthColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    LoginText.emailText,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AuthColors.textColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                CustomTextField(
                  hintext: 'ihsohag@gmail.com',
                  icon: Icon(Icons.mail_outline_outlined),
                ),
                SizedBox(
                  height: 20.h,
                ),
                InkWell(
                  onTap: () => Get.toNamed(emailCheckScreen),
                  child: CustomButton(text: ForgotPasswordText.buttonText),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
