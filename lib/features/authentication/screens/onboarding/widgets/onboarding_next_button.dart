import 'package:flutter/material.dart';
import 'package:greenway_commerce/features/authentication/controllers/onboarding/onboarding_controllers.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/device/device_utility.dart';

class OnBoardingNextButton extends StatelessWidget {
  OnBoardingNextButton({
    super.key,
  });

  final controller = OnboardingControllers.instance;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: TDeviceUtility.getBottomNavBarHeight(context) + 25,
      right: TSizes.defaultSpace,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(side: BorderSide.none),
          backgroundColor: TColors.light,
          padding: const EdgeInsets.all(15),
        ),
        onPressed: () => controller.nextPage(),
        child: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: TColors.success,
          size: 24,
        ),
      ),
    );
  }
}
