import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  var currentPage = 0.obs;
  final PageController pageController = PageController();

  void onPagechanged(int index) {
    currentPage.value = index;
  }

  void nextPage() {
    if (currentPage.value < 3) {
      pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }
}
