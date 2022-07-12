// ignore_for_file: prefer_const_constructors

import 'package:bank_ui_design/constant/strings.dart';
import 'package:bank_ui_design/routes/route.dart';
import 'package:bank_ui_design/views/pages/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../constant/color.dart';

class SendMoneyScreen extends StatelessWidget {
  const SendMoneyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 8.h),
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        onTap: () => Get.toNamed(walletScreen),
                        child: CircleAvatar(
                          backgroundColor: AuthColors.iconColor,
                          radius: 20.r,
                          child: Center(
                            child: Icon(
                              Icons.arrow_back_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Send Money!",
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 50.w,
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Text(
                SendMoneyText.headingSubtitle,
                style: TextStyle(
                  color: SendMoneyColor.subtitleColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Card(
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.account_balance_outlined,
                    color: SendMoneyColor.iconColor,
                    size: 30,
                  ),
                  title: Text(SendMoneyText.title_1),
                  subtitle: Text(SendMoneyText.subtitle_1),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: SendMoneyColor.iconColor,
                      size: 20,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Card(
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.person_outline,
                    color: SendMoneyColor.iconColor,
                    size: 30,
                  ),
                  title: Text(SendMoneyText.title_2),
                  subtitle: Text(SendMoneyText.subtitle_2),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: SendMoneyColor.iconColor,
                      size: 20,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
