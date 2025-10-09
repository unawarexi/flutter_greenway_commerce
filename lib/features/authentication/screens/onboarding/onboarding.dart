import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greenway_commerce/features/authentication/controllers/onboarding/onboarding_controllers.dart';
import 'package:greenway_commerce/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:greenway_commerce/features/authentication/screens/onboarding/widgets/onbaording_skip.dart';
import 'package:greenway_commerce/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:greenway_commerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:greenway_commerce/utils/constants/image_strings.dart';
import 'package:greenway_commerce/utils/constants/texts_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  final controller = Get.put(OnboardingControllers());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Image.asset(
              TIamges.onBoardingBackgroundImage,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),

          // PageView with onboarding content
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
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

          // Top left corner image
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              TIamges.onBoardingTopLeftImage,
              width: MediaQuery.of(context).size.width * 0.6,
              height: MediaQuery.of(context).size.height * 0.4,
              fit: BoxFit.contain,
              alignment: Alignment.topLeft,
            ),
          ),

          // Overlay widgets
          OnBoardingSkip(),
          OnBoardingDotNavigation(),
          OnBoardingNextButton()
        ],
      ),
    );
  }
}
