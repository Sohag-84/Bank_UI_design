// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:bank_ui_design/constant/color.dart';
import 'package:bank_ui_design/constant/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../routes/route.dart';
import '../../widgets/custom_transaction_list.dart';
import '../../widgets/custom_visa_card_container.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CardColor.bg_color,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: Text(
                    CardText.myCardText,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                SizedBox(
                  height: 150.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CustomVisaCardContainer(
                        cardNumber: CardText.cardNumber_1,
                        holdername: "IH Sohag",
                        expireDate: "05/30",
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      CustomVisaCardContainer(
                        cardNumber: CardText.cardNumber_2,
                        holdername: "Alex",
                        expireDate: "10/23",
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      CustomVisaCardContainer(
                        cardNumber: CardText.cardNumber_3,
                        holdername: "Watson",
                        expireDate: "07/31",
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      CustomVisaCardContainer(
                        cardNumber: CardText.cardNumber_4,
                        holdername: "Abdullah Al Raiyan",
                        expireDate: "09/28",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15.w, bottom: 15.h),
                  child: SizedBox(
                    height: 470,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 25.w, vertical: 22.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              DashboardText.recentTransaction,
                              style: TextStyle(
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            CustomTransactionList(
                              icon: Icons.arrow_back_outlined,
                              circleColor: ListTileColor.circleBgColor_1,
                              iconColor: ListTileColor.iconColor_1,
                              title: ListTileText.title_1,
                              subtitle: ListTileText.subtitle_1,
                              amount: '\$2,500',
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            CustomTransactionList(
                              icon: Icons.arrow_forward_outlined,
                              circleColor: ListTileColor.circleBgColor_2,
                              iconColor: ListTileColor.iconColor_2,
                              title: ListTileText.title_2,
                              subtitle: ListTileText.subtitle_2,
                              amount: '\$3,500',
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            CustomTransactionList(
                              icon: Icons.arrow_forward_outlined,
                              circleColor: ListTileColor.circleBgColor_1,
                              iconColor: ListTileColor.iconColor_1,
                              title: ListTileText.title_1,
                              subtitle: ListTileText.subtitle_1,
                              amount: '\$70,300',
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            CustomTransactionList(
                              icon: Icons.arrow_forward_outlined,
                              circleColor: ListTileColor.circleBgColor_2,
                              iconColor: ListTileColor.iconColor_2,
                              title: ListTileText.title_2,
                              subtitle: ListTileText.subtitle_2,
                              amount: '\$40,780',
                            ),
                            SizedBox(
                              height: 13.h,
                            ),
                            Center(
                              child: InkWell(
                                onTap: () => Get.toNamed(transactionScreen),
                                child: Text(
                                  "View All",
                                  style: TextStyle(
                                    color: DashboardColor.iconColor,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
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
