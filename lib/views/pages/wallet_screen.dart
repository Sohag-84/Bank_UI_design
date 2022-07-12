// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bank_ui_design/constant/color.dart';
import 'package:bank_ui_design/constant/strings.dart';
import 'package:bank_ui_design/widgets/custom_transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../routes/route.dart';
import '../../widgets/custom_container.dart';
import '../../widgets/custom_transaction_list.dart';

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
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                child: SizedBox(
                  height: 560.h,
                  width: double.infinity,
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
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
                                bgColor: WalletColor.circleColor,
                                radius: 28.r,
                                textColor: WalletColor.circleTextColor,
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              InkWell(
                                onTap: () => Get.toNamed(sendMoneyScreen),
                                child: CustomTransaction(
                                  icon: Icons.send_to_mobile_outlined,
                                  text: DashboardText.sendMoney,
                                  bgColor: WalletColor.circleColor,
                                  radius: 28.r,
                                  textColor: WalletColor.circleTextColor,
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              CustomTransaction(
                                icon: Icons.sensor_window_outlined,
                                text: DashboardText.withdraw,
                                bgColor: WalletColor.circleColor,
                                radius: 28.r,
                                textColor: WalletColor.circleTextColor,
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
                                      circleColor:
                                          ListTileColor.circleBgColor_1,
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
                                      circleColor:
                                          ListTileColor.circleBgColor_2,
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
                                      circleColor:
                                          ListTileColor.circleBgColor_1,
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
                                      circleColor:
                                          ListTileColor.circleBgColor_2,
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
                                        onTap: () =>
                                            Get.toNamed(transactionScreen),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
