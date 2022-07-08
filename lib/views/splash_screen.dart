// ignore_for_file: prefer_const_constructors


import 'dart:async';

import 'package:bank_ui_design/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/onboarding_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), ()=>Get.offAllNamed('/onboarding-page'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("images/splash.png",height: 200,width: 200,),
      ),
    );
  }
}
