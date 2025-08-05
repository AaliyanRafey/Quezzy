import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queezy_app/view_model/controller/onboarding_controller.dart';
import 'package:queezy_app/views/onboardingScreens/onboarding_screen1.dart';
import 'package:queezy_app/views/onboardingScreens/onboarding_screen2.dart';
import 'package:queezy_app/views/onboardingScreens/onboarding_screen_view.dart';

class MainOnboardingscreens extends StatelessWidget {
  const MainOnboardingscreens({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingController controller = Get.put(OnboardingController());
    final List<Widget> page = [
      OnboardingScreen1(),
      OnboardingScreen2(),
      OnboardingScreenView3(),
    ];
    return PageView.builder(
      itemCount: page.length,
      controller: controller.pageController,
      onPageChanged: controller.onPagechanged,
      itemBuilder: (context, index) => page[index],
    );
  }
}
