// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';

import '../views/email_check_screen.dart';
import '../views/forgot_password_screen.dart';
import '../views/login_screen.dart';
import '../views/pages/bottom_nav_page.dart';
import '../views/pages/onboarding_page.dart';
import '../views/splash_screen.dart';
import '../views/tip_screen.dart';

const String splashScreen = '/splash-screen';
const String onboardingPage = '/onboarding-page';
const String loginScreen = '/login-screen';
const String forgotPasswordScreen = '/forgotPassword-screen';
const String emailCheckScreen = '/emailCheck-screen';
const String tipScreen = '/tip-screen';
const String navigationBar = '/navigationBar-screen';

List<GetPage> pages = [
  GetPage(
    name: splashScreen,
    page: () => SplashScreen(),
  ),
  GetPage(
    name: onboardingPage,
    page: () => OnBoardingPage(),
  ),
  GetPage(
    name: loginScreen,
    page: () => LoginScreen(),
  ),
  GetPage(
    name: forgotPasswordScreen,
    page: () => ForgotPasswordScreen(),
  ),
  GetPage(
    name: emailCheckScreen,
    page: () => EmailCheckScreen(),
  ),
  GetPage(
    name: tipScreen,
    page: () => TipScreen(),
  ),
  GetPage(
    name: navigationBar,
    page: () => BottomNavBarPage(),
  ),
];
