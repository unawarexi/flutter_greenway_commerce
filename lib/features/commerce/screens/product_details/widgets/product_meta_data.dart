import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:greenway_commerce/common/containers/Rounded_container.dart';
import 'package:greenway_commerce/features/commerce/screens/product_details/widgets/product_price_text.dart';
import 'package:greenway_commerce/features/commerce/screens/product_details/widgets/product_title_text.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
     final dark = THelperFunctions.isDarkMode(context);
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Product metadata details will go here
        Row(
          children: [
            TRoundedContainer(
              radius: TSizes.sizeSM,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.sizeSM, vertical: TSizes.sizeXS),
              child: Text(
                "25% OFF",
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: TColors.black),
              ),
            ),
            const SizedBox(width: TSizes.spaceBetweenItems),

            Text(
              "\$250.00",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: dark ? TColors.white : TColors.black,
                  decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(width: TSizes.spaceBetweenItems),
            const TProductPriceText(price: "200", isLarge: true,),

            
          ],
        ),
        const SizedBox(height: TSizes.spaceBetweenItems),
        // product title
            const TProductTitleText(title: "- Blue Nike Sports Shoes", ),
      ],
    );
  }
}
