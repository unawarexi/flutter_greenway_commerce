import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greenway_commerce/common/styles/spacing_styles.dart';
import 'package:greenway_commerce/features/authentication/screens/login/login_screen.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/constants/texts_strings.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.onPressed});

  // -------- constants params
  final String image, title, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: TSpacingStyle.paddingWithAppBarHeight * 2,
        child: Column(
          children: [
            //-------- Verify image
            Image(
              image: AssetImage(image),
              width: THelperFunctions.screenWidth(context) * 0.6,
            ),

            const SizedBox(
              height: TSizes.spaceBetweenSections,
            ),

            //--------- title and subtiltle
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSizes.spaceBetweenItems,
            ),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),

            const SizedBox(
              height: TSizes.spaceBetweenSections,
            ),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => const LoginScreen()),
                  child: const Text(TTexts.continueButton)),
            ),
          ],
        ),
      ),
    );
  }
}
