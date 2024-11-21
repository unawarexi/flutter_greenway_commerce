import 'package:get/get.dart';

class HomeCarouselIndicatorController extends GetxController {
  // Singleton pattern using GetX
  static HomeCarouselIndicatorController get instance => Get.find();

  // Reactive index to track the current carousel position
  final carouselCurrentIndex = 0.obs;

  // Method to update the current index when the carousel slides
  void updateIndex(int index) {
    carouselCurrentIndex.value = index;
  }
}
