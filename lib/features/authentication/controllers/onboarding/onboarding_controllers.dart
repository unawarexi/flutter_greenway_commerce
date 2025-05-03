import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:greenway_commerce/features/authentication/screens/login/login_screen.dart';

class OnboardingControllers extends GetxController {
  // Singleton instance getter
  static OnboardingControllers get instance => Get.find();

  // Correct variable naming to camelCase
  final PageController pageController = PageController();

  // Observable to track current page index
  Rx<int> currentPageIndex = 0.obs;

  // Method to update the current page index observable
  void updatePageIndicator(int index) {
    currentPageIndex.value = index;
  }

  // Navigate to a specific page when dot is clicked
  void dotNavigateClick(int index) {
    pageController.jumpToPage(index);
    updatePageIndicator(index);
  }

  // Navigate to the next page and loginScreen
  void nextPage() {
    int nextPage = currentPageIndex.value + 1;
    if (nextPage < 3) {
      // Assuming there are 3 pages, adjust as needed
      pageController.animateToPage(
        nextPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      updatePageIndicator(nextPage);
    } else {
      Get.offAll(const LoginScreen());
    }
  }

  // Skip to the last page
  void skipPage() {
    pageController.animateToPage(
      2, // Assuming the last page index is 2, adjust as needed
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    updatePageIndicator(2); // Update to the last page index
  }
}
