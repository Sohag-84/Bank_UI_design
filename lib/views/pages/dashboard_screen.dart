// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables

import 'package:bank_ui_design/constant/color.dart';
import 'package:bank_ui_design/constant/strings.dart';
import 'package:bank_ui_design/routes/route.dart';
import 'package:bank_ui_design/views/pages/send_money_screen.dart';
import 'package:bank_ui_design/widgets/show_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widgets/custom_container.dart';
import '../../widgets/custom_transaction.dart';
import '../../widgets/custom_transaction_list.dart';

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
                            containerColor: Colors.white,
                            titleColor: DashboardColor.sutaraqCurrencyColor,
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          CustomContainer(
                            image: 'images/usa.png',
                            title: "USD",
                            balance: '\$42,000',
                            containerColor: Colors.white,
                            titleColor: DashboardColor.sutaraqCurrencyColor,
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          CustomContainer(
                            image: 'images/bd.png',
                            title: "BDT",
                            balance: '৳5190,000',
                            containerColor: Colors.white,
                            titleColor: DashboardColor.sutaraqCurrencyColor,
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          CustomContainer(
                            image: 'images/german.png',
                            title: DashboardText.surtaqCurrency,
                            balance: '€230,000',
                            containerColor: Colors.white,
                            titleColor: DashboardColor.sutaraqCurrencyColor,
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
                height: 545.h,
                child: Container(
                  decoration: BoxDecoration(
                    color: DashboardColor.balanceColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (_) {
                                    return CustomDialog(
                                        buttonText: DialogText.fundWalletButton,
                                        onPressed: () {
                                          print("object");
                                        });
                                  });
                            },
                            child: CustomTransaction(
                              icon: Icons.wallet_travel,
                              text: DashboardText.fundWallet,
                              bgColor: DashboardColor.circleColor,
                              radius: 35.r,
                              textColor: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          InkWell(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (_) {
                                  return CustomDialog(
                                    buttonText: DialogText.sendMoneyButton,
                                    onPressed: () {
                                      Get.to(SendMoneyScreen());
                                    },
                                  );
                                },
                              );
                            },
                            child: CustomTransaction(
                              icon: Icons.send_to_mobile_outlined,
                              text: DashboardText.sendMoney,
                              bgColor: DashboardColor.circleColor,
                              radius: 35.r,
                              textColor: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          InkWell(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (_) {
                                  return CustomDialog(
                                      buttonText: DialogText.widthdrowButton,
                                      onPressed: () {
                                        print("object");
                                      });
                                },
                              );
                            },
                            child: CustomTransaction(
                              icon: Icons.sensor_window_outlined,
                              text: DashboardText.withdraw,
                              bgColor: DashboardColor.circleColor,
                              radius: 35.r,
                              textColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.r),
                              topRight: Radius.circular(20.r),
                            ),
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
                                  height: 5.h,
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
                    ],
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
