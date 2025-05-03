import 'package:flutter/material.dart';
import 'package:greenway_commerce/utils/constants/image_strings.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/constants/texts_strings.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start, // Align all content to the start
      children: [
        // Logo and GreenWay Text
        const SizedBox(height: TSizes.sizeMD),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo Image
            Image(
              width: TSizes.imageWidthXS,
              height: TSizes.imageHeightXS,
              image: AssetImage(
                dark ? TIamges.logoVariant : TIamges.logoVariant,
              ),
            ),
          ],
        ),
        const SizedBox(height: TSizes.sizeXL),

        // Titles for Login
        Text(
          TTexts.loginTitle,
          textAlign: TextAlign.start, // Align text to the left
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: TSizes.sizeSM),
        Text(
          TTexts.subloginTitle,
          textAlign: TextAlign.start, // Align text to the left
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: TSizes.sizeMD),
      ],
    );
  }
}
