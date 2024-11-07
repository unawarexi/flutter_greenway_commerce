import 'package:flutter/material.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/constants/texts_strings.dart';

class TTermsAndConditions extends StatelessWidget {
  const TTermsAndConditions({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start, // Align checkbox and text
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(width: TSizes.spaceBetweenItems),
        Flexible(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: TTexts.agreementText,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: ' ',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: TTexts.privacyPolicy,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        decoration: TextDecoration.underline,
                        color: dark ? TColors.light : TColors.primary,
                        decorationColor: dark ? TColors.light : TColors.primary,
                      ),
                ),
                TextSpan(
                  text: ' and ',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: TTexts.termsOfService,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        decoration: TextDecoration.underline,
                        color: dark ? TColors.light : TColors.primary,
                        decorationColor: dark ? TColors.light : TColors.primary,
                      ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
