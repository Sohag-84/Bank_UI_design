import 'package:bank_ui_design/model/onboarding_info.dart';
import 'package:get/get.dart';

import '../constant/strings.dart';

class OnboardingController extends GetxController {
  final selectedPageIndex = 0.obs;
  List<OnboardingInfo> onboardingPage = [
    OnboardingInfo(
        imageAsset: 'images/payment.png',
        title: OnboardignStringOne.titleText,
        description: OnboardignStringOne.description,
        button: ButtonString.loginText,
        button2: ButtonString.trySutraq),
    OnboardingInfo(
        imageAsset: 'images/support.png',
        title: OnboardignStringTwo.titleText,
        description: OnboardignStringTwo.description,
        button: ButtonString.loginText,
        button2: ButtonString.trySutraq),
    OnboardingInfo(
        imageAsset: 'images/secure.png',
        title: OnboardignStringThree.titleText,
        description: OnboardignStringThree.description,
        button: ButtonString.loginText,
        button2: ButtonString.trySutraq),
  ];
}
