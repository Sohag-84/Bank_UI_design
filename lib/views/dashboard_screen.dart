// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bank_ui_design/constant/color.dart';
import 'package:bank_ui_design/constant/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/custom_container.dart';
import '../widgets/custom_transaction.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DashboardColor.bg_color,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.w, top: 20.h),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 15.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 29.r,
                                  backgroundColor: Color(0xFF3417A8),
                                  child: Text(
                                    "OP",
                                    style: TextStyle(
                                        color: DashboardColor.textColor),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      DashboardText.welcomeText,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      DashboardText.welcomeText2,
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.5),
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40.h,
                            width: 40.w,
                            child: SizedBox(
                              child: Stack(
                                children: [
                                  Positioned(
                                    child: IconButton(
                                      onPressed: null,
                                      icon: Icon(
                                        Icons.notifications,
                                        color: Colors.white.withOpacity(0.60),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: CircleAvatar(
                                      radius: 8.r,
                                      backgroundColor:
                                          DashboardColor.notificationColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      height: 89.h,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CustomContainer(
                            image: 'images/splash.png',
                            title: DashboardText.surtaqCurrency,
                            balance: 'Q190,000',
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          CustomContainer(
                            image: 'images/usa.png',
                            title: "USD",
                            balance: '\$42,000',
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          CustomContainer(
                            image: 'images/bd.png',
                            title: "BDT",
                            balance: '৳5190,000',
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          CustomContainer(
                            image: 'images/german.png',
                            title: DashboardText.surtaqCurrency,
                            balance: '€230,000',
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              SizedBox(
                height: 504.h,
                child: Container(
                  decoration: BoxDecoration(
                    color: DashboardColor.balanceColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomTransaction(
                              icon: Icons.wallet_travel,
                              text: DashboardText.fundWallet,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            CustomTransaction(
                              icon: Icons.send_to_mobile_outlined,
                              text: DashboardText.sendMoney,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            CustomTransaction(
                              icon: Icons.send_time_extension,
                              text: DashboardText.fundWallet,
                            ),
                          ],
                        ),
                      ],
                    ),
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
