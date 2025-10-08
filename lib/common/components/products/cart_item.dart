import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/components/custom_shapes/rounded_image.dart';
import 'package:greenway_commerce/common/components/shared/brand_verified_badge.dart';
import 'package:greenway_commerce/common/components/texts_components/product_title_text.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/image_strings.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(children: [
      TRoundedImage(
        imageURL: TIamges.cardProduct1,
        width: 60,
        height: 60,
        padding: const EdgeInsets.all(TSizes.paddingSM),
        backgroundColor:
            dark ? TColors.darkGrey : TColors.light,
      ),
      const SizedBox(width: TSizes.spaceBetweenItems),
      Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TBrandTitleWithVerifiedBadge(
              title: 'Nike',
            ),
            const Flexible(
                child: TProductTitleText(
                    title: 'Black Sports shoes',
                    maxLines: 1)),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Color: ',
                    style:
                        Theme.of(context).textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: 'Green',
                    style:
                        Theme.of(context).textTheme.bodyLarge,
                  ),
                  const TextSpan(text: '   '),
                  TextSpan(
                    text: 'Size: ',
                    style:
                        Theme.of(context).textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: 'UK 08',
                    style:
                        Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
