import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greenway_commerce/features/authentication/screens/signup/verify_email.dart';
import 'package:greenway_commerce/utils/helpers/toast_alerts.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find<SignupController>();

  // Form key
  final GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  // Text editing controllers
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  // Observable state variables
  var isPasswordVisible = false.obs;
  var isTermsAccepted = false.obs;
  var isLoading = false.obs;

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    usernameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  // Toggle password visibility
  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  // Toggle terms acceptance
  void toggleTermsAcceptance(bool? value) {
    isTermsAccepted.value = value ?? false;
  }

  // Sign up method
  Future<void> signUp() async {
    try {
      // Get the correct context from Get.overlayContext
      final context = Get.overlayContext;
      if (context == null) return;

      // Validate form FIRST - this will show the error messages on the fields
      if (!signupFormKey.currentState!.validate()) {
        // Add small delay to ensure UI updates before showing toast
        await Future.delayed(const Duration(milliseconds: 100));
        ToastAlert.error(
          context,
          'Please fix the errors in the form',
        );
        return;
      }

      // Check if terms are accepted AFTER form validation
      if (!isTermsAccepted.value) {
        ToastAlert.warning(
          context,
          'Please accept the Terms and Conditions to continue',
        );
        return;
      }

      // Start loading ONLY after all validations pass
      isLoading.value = true;

      // TODO: Check Internet connection

      // TODO: Register user in firebase auth and save data in firebase

      // TODO: Save user data in firestore

      // Show success toast
      ToastAlert.success(
        context,
        'Account created successfully!',
      );

      // Navigate to verify email screen
      Get.to(() => const VerifyEmailScreen());

      // Stop loading
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
      final context = Get.overlayContext;
      if (context != null) {
        ToastAlert.error(
          context,
          'Something went wrong. Please try again.',
        );
      }
    }
  }
}
