import 'package:flutter/material.dart';
import 'package:sign_button/sign_button.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SignInButton.mini(
          buttonType: ButtonType.google,
          onPressed: () {
            // TODO: Implement Google sign in
          },
        ),
        const SizedBox(width: TSizes.spaceBetweenItems),
        SignInButton.mini(
          buttonType: ButtonType.facebook,
          onPressed: () {
            // TODO: Implement Facebook sign in
          },
        ),
        const SizedBox(width: TSizes.spaceBetweenItems),
        SignInButton.mini(
          buttonType: ButtonType.twitter,
          onPressed: () {
            // TODO: Implement Twitter sign in
          },
        ),
      ],
    );
  }
}
