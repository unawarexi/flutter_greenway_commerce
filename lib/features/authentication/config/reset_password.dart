import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greenway_commerce/utils/constants/image_strings.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/constants/texts_strings.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //-------- Verify image
            Image(
              image: const AssetImage(TIamges.resetLinkIllustration),
              width: THelperFunctions.screenWidth(context) * 0.6,
            ),

            const SizedBox(
              height: TSizes.spaceBetweenSections,
            ),

            //--------- title and subtiltle
            Text(
              TTexts.passwordEmailSentTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSizes.spaceBetweenItems,
            ),
            Text(
              TTexts.passwordResetEmailSubtitle,
              style: TextStyle(
                  fontSize: TSizes.fontSizeSM,
                  fontWeight: FontWeight.bold,
                  color: dark ? Colors.grey.shade400 : Colors.black45),
              textAlign: TextAlign.center,
            ),

            const SizedBox(
              height: TSizes.spaceBetweenSections,
            ),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {}, child: const Text(TTexts.doneButton)),
            ),
            const SizedBox(
              height: TSizes.spaceBetweenSections,
            ),

            SizedBox(
              width: double.infinity,
              child: TextButton(
                  onPressed: () {},
                  child: const Text(TTexts.resendPasswordButton)),
            ),
          ],
        ),
      ),
    );
  }
}
