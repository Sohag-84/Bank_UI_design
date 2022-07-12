// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/color.dart';
import '../constant/strings.dart';
import 'custom_button.dart';
import 'custom_dialog_container.dart';

class CustomDialog extends StatelessWidget {
  final String buttonText;
  final onPressed;
  const CustomDialog(
      {Key? key, required this.buttonText, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    DialogText.title,
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: DialogColor.titleColor),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    DialogText.subtitle,
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: DialogColor.subtitleColor),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomDialogContainer(
                      color: Color(0xFF08083D),
                      image: "images/bd.png",
                      text: "NGN",
                      textColor: Colors.white,
                      amount: "N12,000"),
                  CustomDialogContainer(
                    color: Colors.white,
                    image: "images/bd.png",
                    text: "GBP",
                    textColor: Colors.black,
                    amount: "£500",
                  ),
                  CustomDialogContainer(
                    color: Colors.white,
                    image: "images/bd.png",
                    text: "GBP",
                    textColor: Colors.black,
                    amount: "£500",
                  ),
                ],
              ),
              InkWell(
                onTap: onPressed,
                child: CustomButton(text: buttonText),
              )
            ],
          ),
        ),
      ),
    );
  }
}
