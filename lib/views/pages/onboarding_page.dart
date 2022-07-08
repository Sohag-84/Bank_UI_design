// ignore_for_file: prefer_const_constructors
import 'dart:ui';

import 'package:bank_ui_design/constant/color.dart';
import 'package:bank_ui_design/routes/route.dart';
import 'package:bank_ui_design/views/login_screen.dart';
import 'package:bank_ui_design/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../constant/strings.dart';
import '../../controller/onboarding_controller.dart';

class OnBoardingPage extends StatelessWidget {
  OnBoardingPage({Key? key}) : super(key: key);

  final controller = OnboardingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          onPageChanged: controller.selectedPageIndex,
          itemCount: controller.onboardingPage.length,
          itemBuilder: (_, index) {
            return Column(
              children: [
                SizedBox(
                  height: 320.h,
                  child:
                      Image.asset(controller.onboardingPage[index].imageAsset),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    controller.onboardingPage.length,
                    (index) => Obx(() {
                      return Container(
                        width: 7.w,
                        height: 7.h,
                        margin: EdgeInsets.all(2.h),
                        decoration: BoxDecoration(
                            color: controller.selectedPageIndex.value == index
                                ? Colours.indecatorColor
                                : Colours.indecatorColor2,
                            shape: BoxShape.circle),
                      );
                    }),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colours.onboardingContainerColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.r),
                            topRight: Radius.circular(25.r))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            controller.onboardingPage[index].title,
                            style: TextStyle(
                                fontSize: 27.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Text(
                            controller.onboardingPage[index].description,
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          GestureDetector(
                            onTap: () => Get.toNamed(loginScreen),
                            child: CustomOnboardingButton(
                                text: controller.onboardingPage[index].button),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Center(
                                child: Text(
                              ButtonString.trySutraq,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700),
                            )),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
