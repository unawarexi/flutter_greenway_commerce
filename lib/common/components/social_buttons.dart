import 'package:flutter/material.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/image_strings.dart';
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
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: TColors.grey,
              ),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: TSizes.iconSizeMD,
                  height: TSizes.iconSizeMD,
                  image: AssetImage(TIamges.google))),
        ),
        const SizedBox(
          width: TSizes.spaceBetweenItems,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: TColors.grey,
              ),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: TSizes.iconSizeMD,
                  height: TSizes.iconSizeMD,
                  image: AssetImage(TIamges.facebook))),
        ),
        const SizedBox(
          width: TSizes.spaceBetweenItems,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: TColors.grey,
              ),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: Image(
                  color: dark ? TColors.light : null,
                  width: TSizes.iconSizeMD,
                  height: TSizes.iconSizeMD,
                  image: const AssetImage(TIamges.twitter))),
        ),
      ],
    );
  }
}
