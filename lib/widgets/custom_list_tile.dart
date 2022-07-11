// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final onPressed;
  const CustomListTile({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
              color: Color(0xFF111111),
              fontSize: 14.sp,
              fontWeight: FontWeight.w500),
        ),
        trailing: IconButton(
          onPressed: onPressed,
          icon: Icon(
            Icons.arrow_forward_ios_outlined,
            color: Color(0xFF757575),
          ),
        ),
      ),
    );
  }
}
