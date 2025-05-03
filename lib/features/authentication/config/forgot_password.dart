import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greenway_commerce/features/authentication/config/reset_password.dart';
import 'package:greenway_commerce/utils/constants/image_strings.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/constants/texts_strings.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //----------------- headings

            Text(
              TTexts.forgotPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSizes.spaceBetweenItems,
            ),
            Text(
              TTexts.forgotPasswordSubtitle,
              style: TextStyle(
                  fontSize: TSizes.fontSizeXS,
                  fontWeight: FontWeight.bold,
                  color: dark ? Colors.grey.shade400 : Colors.black45),
            ),

            const SizedBox(
              height: TSizes.spaceBetweenSections * 2,
            ),

            //------------------- text field
            TextFormField(
              decoration: const InputDecoration(
                labelText: TTexts.emailLabel,
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),

            const SizedBox(
              height: TSizes.spaceBetweenSections,
            ),

            //------------------------ submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => const ResetPassword()),
                child: const Text(TTexts.forgotPasswordButton),
              ),
            ),

            const SizedBox(
              height: TSizes.spaceBetweenSections * 2,
            ),

            //----------- image
            Center(
              child: Image.asset(
                TIamges.forgotPasswordIllustration,
                height: 300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
