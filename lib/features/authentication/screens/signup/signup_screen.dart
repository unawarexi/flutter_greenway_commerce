import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/components/form_divider.dart';
import 'package:greenway_commerce/common/components/social_buttons.dart';
import 'package:greenway_commerce/features/authentication/screens/signup/widgets/sign_up_form.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/constants/texts_strings.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //------------ signUp Texts
              Text(
                TTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBetweenItems),

              Text(
                TTexts.subSignUpTitle,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: TSizes.spaceBetweenSections),

              //------ signUp Form
              TSignUpForm(dark: dark),
              const SizedBox(
                height: TSizes.spaceBetweenSections,
              ),

              //------- divider component
              TFormDivider(dark: dark, dividerText: TTexts.dividerTitle),
              const SizedBox(
                height: TSizes.spaceBetweenSections,
              ),

              //------------ signUp Social Buttons
              TSocialButtons(dark: dark)
            ],
          ),
        ),
      ),
    );
  }
}
