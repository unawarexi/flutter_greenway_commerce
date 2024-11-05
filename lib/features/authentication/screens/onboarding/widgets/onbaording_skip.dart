import "package:flutter/material.dart";
import "package:greenway_commerce/features/authentication/controllers/onboarding/onboarding_controllers.dart";
import "package:greenway_commerce/utils/constants/sizes.dart";
import "package:greenway_commerce/utils/device/device_utility.dart";

class OnBoardingSkip extends StatelessWidget {
  OnBoardingSkip({
    super.key,
  });

  final controller = OnboardingControllers.instance;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtility.getAppBarHeight(AppBar()),
        right: TSizes.defaultSpace,
        child: TextButton(
            onPressed: () => controller.skipPage(), child: const Text("skip")));
  }
}
