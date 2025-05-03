import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greenway_commerce/common/components/success_screens/success_screens.dart';
import 'package:greenway_commerce/features/authentication/screens/login/login_screen.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/image_strings.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/constants/texts_strings.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () => Get.offAll(() => const LoginScreen()),
                icon: const Icon(CupertinoIcons.clear))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                //-------- Verify image
                Image(
                  image: const AssetImage(TIamges.emailDeliveredIllustration),
                  width: THelperFunctions.screenWidth(context) * 0.6,
                ),

                const SizedBox(
                  height: TSizes.spaceBetweenSections,
                ),

                //--------- title and subtiltle
                Text(
                  TTexts.emailVerificationTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: TSizes.spaceBetweenItems,
                ),
                Text(
                  TTexts.contactSupport,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.bold, color: TColors.success),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(
                  height: TSizes.spaceBetweenSections,
                ),
                Text(
                  TTexts.promptTitle,
                  style: TextStyle(
                      fontSize: TSizes.fontSizeSM,
                      fontWeight: FontWeight.bold,
                      color: dark ? Colors.grey.shade400 : Colors.black45),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(
                  height: TSizes.spaceBetweenSections,
                ),

                //-----------Buttons
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => SuccessScreen(
                            image: TIamges.staticSuccessIllustration,
                            title: TTexts.accountCreatedSuccess,
                            subtitle: TTexts.contactSupport,
                            onPressed: () => Get.to(() =>
                                const LoginScreen()), // Ensure LoginScreen has the correct constructor
                          ));
                    },
                    child: const Text(TTexts.continueButton),
                  ),
                ),

                const SizedBox(
                  height: TSizes.spaceBetweenItems,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(TTexts.resendEmailButton)),
                ),
              ],
            ),
          ),
        ));
  }
}
