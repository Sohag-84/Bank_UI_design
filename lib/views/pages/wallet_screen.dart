// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bank_ui_design/constant/color.dart';
import 'package:bank_ui_design/constant/strings.dart';
import 'package:bank_ui_design/widgets/custom_circle.dart';
import 'package:bank_ui_design/widgets/custom_transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/custom_container.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WalletColor.bg_color,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: Text(
                  WalletText.myWalletText,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 19.h,
              ),
              SizedBox(
                height: 89.h,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.w, right: 15.w),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CustomContainer(
                        image: 'images/splash.png',
                        title: DashboardText.surtaqCurrency,
                        balance: 'Q190,000',
                        containerColor: WalletColor.containerColor_1,
                        titleColor: Colors.white,
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      CustomContainer(
                        image: 'images/usa.png',
                        title: "USD",
                        balance: '\$42,000',
                        containerColor: WalletColor.containerColor_3,
                        titleColor: Color(0xFF0A004A),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      CustomContainer(
                        image: 'images/bd.png',
                        title: "BDT",
                        balance: '৳5190,000',
                        containerColor: WalletColor.containerColor_2,
                        titleColor: Colors.white,
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      CustomContainer(
                        image: 'images/german.png',
                        title: DashboardText.surtaqCurrency,
                        balance: '€230,000',
                        containerColor: WalletColor.containerColor_1,
                        titleColor: Colors.white,
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 5.h),
                child: SizedBox(
                  height: 430.h,
                  width: double.infinity,
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Text("Heloo")
              // Padding(
              //   padding: const EdgeInsets.all(15.0),
              //   child: Container(
              //     height: 400,
              //     decoration: BoxDecoration(
              //       color: Colors.red,
              //       borderRadius: BorderRadius.only(
              //         topLeft: Radius.circular(20.r),
              //         topRight: Radius.circular(20.r),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
