import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart'; // For accessing Get.context
import 'dart:io'; // For checking platform // For checking internet connection
import 'package:url_launcher/url_launcher_string.dart'; // For vibrating

class DeviceUtility {
  DeviceUtility._(); // Private constructor to prevent instantiation

  // Hide the keyboard
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  // Check if the device is in portrait mode
  static bool isPortrait(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait;
  }

  // Check if the device is in landscape mode
  static bool isLandscape(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape;
  }

  // Set status bar color
  static Future<void> setStatusBarColor(Color color,
      {Brightness? brightness}) async {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: color,
      statusBarBrightness: brightness ?? Brightness.dark,
    ));
  }

  // Set both status bar and navigation bar color
  static Future<void> setSystemUIOverlayColors(
      {Color? statusBarColor,
      Color? navBarColor,
      Brightness? brightness}) async {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: statusBarColor ?? Colors.transparent,
      systemNavigationBarColor: navBarColor ?? Colors.transparent,
      statusBarBrightness: brightness ?? Brightness.dark,
    ));
  }

  // Set full screen mode (hides system status and navigation bars)
  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
        enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }

  // Exit full screen mode (shows system status and navigation bars)
  static void exitFullScreen() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  // Get screen width
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  // Get screen height
  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(Get.context!).size.height;
  }

  // Get device pixel ratio
  static double getDevicePixelRatio(BuildContext context) {
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }

  // Get status bar height
  static double getStatusBarHeight() {
    return MediaQuery.of(Get.context!).padding.top;
  }

  // Get bottom navigation bar height
  static double getBottomNavBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.bottom;
  }

  // Get app bar height
  static double getAppBarHeight(AppBar appBar) {
    return appBar.preferredSize.height;
  }

  // Get keyboard height
  static double getKeyboardHeight(BuildContext context) {
    return MediaQuery.of(context).viewInsets.bottom;
  }

  // Check if keyboard is visible
  static bool isKeyboardVisible(BuildContext context) {
    return MediaQuery.of(context).viewInsets.bottom > 0;
  }

  // Check if the device is a physical device
  static bool isPhysicalDevice() {
    return !Platform.isIOS && !Platform.isAndroid;
  }

  // Vibrate the device
  static void vibrateDevice(
      {Duration duration = const Duration(milliseconds: 100)}) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate());
  }

  // Set preferred orientations
  static Future<void> setPreferredOrientations(
      List<DeviceOrientation> orientations) async {
    await SystemChrome.setPreferredOrientations(orientations);
  }

  // Hide status bar
  static void hideStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  // Show status bar
  static void showStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  // Check if the device has an internet connection
  static Future<bool> hasInternetConnection() async {
    try {
      final connectivityResult = await InternetAddress.lookup('example.com');
      return connectivityResult.isNotEmpty &&
          connectivityResult[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  // Check if the platform is iOS
  static bool isIos() {
    return Platform.isIOS;
  }

  // Check if the platform is Android
  static bool isAndroid() {
    return Platform.isAndroid;
  }

  // Launch a URL in the browser
  static Future<void> launchUrl(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
