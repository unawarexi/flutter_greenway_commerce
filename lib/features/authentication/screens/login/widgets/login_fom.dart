import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greenway_commerce/features/authentication/screens/signup/signup_screen.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/constants/texts_strings.dart';

class TLoginFom extends StatelessWidget {
  const TLoginFom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: TSizes.spaceBetweenSections,
        ),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align fields to the left
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                labelText: TTexts.emailLabel,
              ),
            ),
            const SizedBox(height: TSizes.spaceBetweenInputFields),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock_outline),
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                labelText: TTexts.passwordLabel,
              ),
            ),
            const SizedBox(height: TSizes.spaceBetweenInputFields / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(TTexts.rememberMeTitle),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(TTexts.forgotPasswordTitle),
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBetweenSections),
            // Login Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(TTexts.loginButton),
              ),
            ),
            const SizedBox(height: TSizes.spaceBetweenItems),
            // Sign Up Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignupScreen()),
                child: const Text(TTexts.signUpButton),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
