import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greenway_commerce/features/authentication/screens/signup/verify_email.dart';
import 'package:greenway_commerce/features/authentication/screens/signup/widgets/terms_and_conditions.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/constants/texts_strings.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          //-------------------- First and Middle Name in a Row
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: TTexts.firstNameLabel,
                      labelStyle: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(width: TSizes.spaceBetweenInputFields),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: TTexts.lastNameLabel,
                      labelStyle: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBetweenInputFields),

          //--------------------- username field
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.verified_user_outlined),
                labelText: TTexts.userNameLabel,
                labelStyle: TextStyle(fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: TSizes.spaceBetweenInputFields),

          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                labelText: TTexts.emailLabel,
                labelStyle: TextStyle(fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: TSizes.spaceBetweenInputFields),

          //------------------- Phone field
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.call),
                labelText: TTexts.phoneLabel,
                labelStyle: TextStyle(fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: TSizes.spaceBetweenInputFields),

          //----------------- Password field with toggle visibility icon
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.password),
              labelText: TTexts.passwordLabel,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              suffixIcon: Icon(Icons.visibility_off_outlined),
            ),
          ),

          const SizedBox(height: TSizes.spaceBetweenSections),

          //======================= Terms and condtions
          TTermsAndConditions(dark: dark),

          const SizedBox(
            height: TSizes.spaceBetweenSections,
          ),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Get.to(() => const VerifyEmailScreen()),
                child: const Text(TTexts.signUpButton)),
          )
        ],
      ),
    );
  }
}
