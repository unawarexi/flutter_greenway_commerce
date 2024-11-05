import 'package:flutter/material.dart';
import 'package:greenway_commerce/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:greenway_commerce/features/authentication/screens/onboarding/widgets/onbaording_skip.dart';
import 'package:greenway_commerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:greenway_commerce/utils/constants/image_strings.dart';
import 'package:greenway_commerce/utils/constants/texts_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key}); // Remove const, because of the controller

  // Create the PageController
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Use the same controller for the PageView
          PageView(
            controller: _pageController,
            children: const [
              OnBoardingPage(
                image: TIamges.onBoardingImage1,
                title: TTexts.onboardingTitle1,
                subtitle: TTexts.subOnboardingTitle1,
              ),
              OnBoardingPage(
                image: TIamges.onBoardingImage2,
                title: TTexts.onboardingTitle2,
                subtitle: TTexts.subOnboardingTitle2,
              ),
              OnBoardingPage(
                image: TIamges.onBoardingImage3,
                title: TTexts.onboardingTitle3,
                subtitle: TTexts.subOnboardingTitle3,
              ),
            ],
          ),
          const OnBoardingSkip(),
          OnBoardingDotNavigation(pageController: _pageController),
        ],
      ),
    );
  }
}
