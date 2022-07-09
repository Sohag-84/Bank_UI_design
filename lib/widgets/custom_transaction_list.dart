// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/color.dart';

class CustomTransactionList extends StatelessWidget {
  final IconData icon;
  final Color circleColor;
  final Color iconColor;
  final title;
  final subtitle;
  final amount;
  const CustomTransactionList(
      {Key? key,
      required this.icon,
      required this.circleColor,
      required this.iconColor,
      required this.title,
      required this.subtitle,
      required this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        selectedColor: Colors.red,
        leading: CircleAvatar(
          backgroundColor: circleColor,
          radius: 15.r,
          child: Icon(
            icon,
            color: iconColor,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: ListTileColor.titleColor,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            fontSize: 10.sp,
            fontWeight: FontWeight.w400,
            color: ListTileColor.subtitleColor,
          ),
        ),
        trailing: Text(
          amount,
          style: TextStyle(
            color: ListTileColor.amountColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
