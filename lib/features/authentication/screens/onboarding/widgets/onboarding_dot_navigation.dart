import 'package:flutter/material.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/device/device_utility.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: TDeviceUtility.getBottomNavBarHeight(context) + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        // Pass the same controller here
        controller: _pageController,
        count: 3,
        effect: ExpandingDotsEffect(
            dotHeight: 6.0,
            activeDotColor: TColors.success,
            dotColor: dark ? TColors.light : Colors.grey),
      ),
    );
  }
}
