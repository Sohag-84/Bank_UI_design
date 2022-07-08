// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:bank_ui_design/constant/color.dart';
import 'package:bank_ui_design/constant/strings.dart';
import 'package:bank_ui_design/routes/route.dart';
import 'package:bank_ui_design/widgets/custom_button.dart';
import 'package:bank_ui_design/widgets/custom_textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 35.w, right: 33.w),
            child: Column(
              children: [
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
                  LoginText.titleText,
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
                  LoginText.subtitleText,
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
                  height: 15.h,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    LoginText.passwordText,
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
                  hintext: '*********',
                  icon: Icon(Icons.lock_outline),
                ),
                SizedBox(
                  height: 13.h,
                ),
                GestureDetector(
                  onTap: () => Get.toNamed(forgotPasswordScreen),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      LoginText.fogotPasswordText,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: AuthColors.iconColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                InkWell(
                  onTap: () => Get.toNamed(tipScreen),
                  child: CustomButton(text: ButtonString.loginText),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      LoginText.needAccountText,
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: AuthColors.textColor),
                    ),
                    Text(
                      " Try",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AuthColors.iconColor,
                      ),
                    ),
                    Text(
                      " Su",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AuthColors.iconColor,
                      ),
                    ),
                    Text(
                      "traq",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AuthColors.textColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Image.asset(
                  "images/fingure.png",
                  height: 70.h,
                  width: 80.h,
                  fit: BoxFit.fill,
                  color: AuthColors.buttonColor,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  LoginText.fingurePrintText,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF62BB46).withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
