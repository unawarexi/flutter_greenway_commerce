import 'package:flutter/material.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';


class TRatingAndShare extends StatelessWidget {
  const TRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(
              Iconsax.star_1,
              color: Colors.amber,
              size: 20,
            ),
            const SizedBox(width: TSizes.paddingXS),
            Text.rich(TextSpan(
              children: [
                TextSpan(
                    text: '4.5 ',
                    style: Theme.of(context).textTheme.bodyLarge),
                const TextSpan(
                    text: '(200 reviews)',
                    style: TextStyle(
                        fontSize: 14, color: Colors.grey)),
              ],
            )),
          ],
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share,
              color: THelperFunctions.isDarkMode(context)
                  ? TColors.light
                  : TColors.dark,
              size: TSizes.iconSizeMD,
            ))
      ],
    );
  }
}
