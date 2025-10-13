import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:greenway_commerce/features/authentication/screens/login/login_screen.dart';
import 'package:greenway_commerce/features/authentication/screens/onboarding/onboarding.dart';
import 'package:greenway_commerce/layouts/navigation_menu.dart';

class AuthenticationRepo extends GetxController {
  AuthenticationRepo get instance => Get.find<AuthenticationRepo>();

  final deviceStorage = GetStorage();

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }


  screenRedirect() async {
    deviceStorage.writeIfNull("isLoggedIn", false);
    final isLoggedIn = deviceStorage.read("isLoggedIn") ?? false;
    if (isLoggedIn) {
      // User is logged in, navigate to the main app screen
      Get.offAll(() => const LoginScreen());
    } else {
      // User is not logged in, navigate to the onboarding or login screen
      Get.offAll(() => OnBoardingScreen());
    }
  }
}
