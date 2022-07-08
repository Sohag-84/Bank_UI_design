// ignore_for_file: prefer_const_constructors

import 'package:bank_ui_design/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'routes/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
        builder: (_,child){
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Bank aplication',
            home: SplashScreen(),
            initialRoute: splashScreen,
            getPages: pages,
          );
        }
    );
  }
}
