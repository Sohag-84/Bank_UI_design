import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/color.dart';
import '../constant/strings.dart';

class CustomVisaCardContainer extends StatelessWidget {
  final String cardNumber;
  final String holdername;
  final String expireDate;
  const CustomVisaCardContainer(
      {Key? key,
      required this.cardNumber,
      required this.holdername,
      required this.expireDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: 270.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: Color(0xFF0041C4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "VISA",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    CustomDot(),
                    SizedBox(
                      width: 3.w,
                    ),
                    CustomDot(),
                    SizedBox(
                      width: 3.w,
                    ),
                    CustomDot(),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  CardText.cardNumberText,
                  style: TextStyle(
                      fontSize: 7.sp,
                      fontWeight: FontWeight.w500,
                      color: CardColor.blurTextcolor),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  cardNumber,
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      CardText.cardHolderName,
                      style: TextStyle(
                          fontSize: 7.sp,
                          fontWeight: FontWeight.w500,
                          color: CardColor.blurTextcolor),
                    ),
                    Text(
                      CardText.expireDate,
                      style: TextStyle(
                          fontSize: 7.sp,
                          fontWeight: FontWeight.w500,
                          color: CardColor.blurTextcolor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      holdername,
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Text(
                      expireDate,
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomDot extends StatelessWidget {
  const CustomDot({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 4.r,
      backgroundColor: Colors.blue,
    );
  }
}
