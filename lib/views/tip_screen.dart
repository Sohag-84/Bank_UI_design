// ignore_for_file: prefer_const_constructors

import 'package:bank_ui_design/constant/strings.dart';
import 'package:bank_ui_design/routes/route.dart';
import 'package:bank_ui_design/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TipScreen extends StatelessWidget {
  const TipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Positioned.fill(
              child: Image(
                image: AssetImage('images/bg_img.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset("images/idea.png"),
                  SizedBox(
                    height: 20.h,
                  ),
                  InkWell(
                    onTap: ()=> Get.toNamed(navigationBar),
                    child: CustomButton(
                      text: TipText.buttonText,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
