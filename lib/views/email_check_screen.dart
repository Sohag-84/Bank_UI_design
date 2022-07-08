import 'package:bank_ui_design/constant/color.dart';
import 'package:bank_ui_design/constant/strings.dart';
import 'package:bank_ui_design/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailCheckScreen extends StatelessWidget {
  const EmailCheckScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: Center(
        child: Card(
          elevation: 5,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: SizedBox(
            height: 448.h,
            width: 332.w,
            child: Column(
              children: [
                SizedBox(
                  height: 83.h,
                ),
                Image.asset(
                  "images/email.png",
                  height: 60.h,
                  width: 80.w,
                ),
                SizedBox(
                  height: 48.h,
                ),
                Text(
                  EmailCheckText.titleText,
                  style: TextStyle(
                      fontSize: 27.sp,
                      fontWeight: FontWeight.w600,
                      color: CheckEmailColor.titleColor),
                ),
                SizedBox(
                  height: 13.h,
                ),
                Text(
                  EmailCheckText.descriptionText,
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: CheckEmailColor.textColor),
                ),
                SizedBox(
                  height: 13.h,
                ),
                CustomButton(text: EmailCheckText.buttonText)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
