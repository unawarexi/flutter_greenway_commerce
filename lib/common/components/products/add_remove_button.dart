import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/components/shared/circular_icon.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class TProductAddAndRemoveButton extends StatelessWidget {
  const TProductAddAndRemoveButton({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TCircularIcon(
          icon: Icon(
            Iconsax.minus,
            color: dark ? TColors.white : TColors.black,
          ),
          width: 32,
          height: 32,
          size: TSizes.paddingMD,
          color: dark ? TColors.white : TColors.black,
          backgroundColor: dark ? TColors.darkerGrey : TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBetweenItems),
        Text(
          '2',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(width: TSizes.spaceBetweenItems),
        const TCircularIcon(
          icon: Icon(
            Iconsax.add,
            color: TColors.white,
          ),
          width: 32,
          height: 32,
          size: TSizes.paddingMD,
          color: TColors.white,
          backgroundColor: TColors.primary,
        ),
      ],
    );
  }
}
