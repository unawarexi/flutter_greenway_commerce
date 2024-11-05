import 'package:get/get.dart';

class OnboardingControllers extends GetxController {
  static OnboardingControllers get instance => Get.find();

  void updatePageIndicator(index) {}

// update current index when page scrolls
  void dotNavigateClick(index) {}

//update current index and skip to the next page
  void nextPage() {}

// update current index and skip to the last page
  void skipPage() {}
}
