import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDialogContainer extends StatelessWidget {
  final Color color;
  final image;
  final String text;
  final Color textColor;
  final String amount;

  const CustomDialogContainer({
    Key? key,
    required this.color,
    required this.image,
    required this.text,
    required this.textColor,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96.h,
      width: 80,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(13),
        border: Border.all(color: Color(0xFFDADADA), width: 2.w),
      ),
      child: Padding(
        padding:
            EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h, bottom: 10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Image.asset(
                  image,
                  height: 10.h,
                  width: 13.33.w,
                ),
                SizedBox(width: 4.w),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: textColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 17.h,
            ),
            Text(
              amount,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
              ),
            )
          ],
        ),
      ),
    );
  }
}
