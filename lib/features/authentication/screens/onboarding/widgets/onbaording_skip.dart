import "package:flutter/material.dart";
import "package:greenway_commerce/utils/constants/sizes.dart";
import "package:greenway_commerce/utils/device/device_utility.dart";

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtility.getAppBarHeight(AppBar()),
        right: TSizes.defaultSpace,
        child: TextButton(onPressed: () {}, child: const Text("skip")));
  }
}
