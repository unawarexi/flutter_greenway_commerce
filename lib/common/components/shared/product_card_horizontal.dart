import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/components/custom_shapes/rounded_image.dart';
import 'package:greenway_commerce/common/components/shared/brand_verified_badge.dart';
import 'package:greenway_commerce/common/components/shared/circular_icon.dart';
import 'package:greenway_commerce/common/components/texts_components/product_price_text.dart';
import 'package:greenway_commerce/common/components/texts_components/product_title_text.dart';
import 'package:greenway_commerce/common/containers/Rounded_container.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/image_strings.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      margin: const EdgeInsets.only(right: TSizes.spaceBetweenItems),
      // padding: const EdgeInsets.all(TSizes.sizeXS),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? const Color(0xFF4A4A4A) : TColors.light,
      ),
      child: Row(
        children: [
          TRoundedContainer(
            height: 120,
            // padding: const EdgeInsets.all(TSizes.paddingMD),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                const SizedBox(
                    height: 200,
                    width: 120,
                    child: TRoundedImage(
                      imageURL: TIamges.cardProduct1,
                      applyImageRadius: true,
                    )),
                // Discount Tag
                Positioned(
                  top: 12,
                  left: 2,
                  child: TRoundedContainer(
                    radius: TSizes.sizeSM,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sizeSM, vertical: TSizes.sizeXS),
                    child: Text(
                      "25% OFF",
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .apply(color: TColors.black),
                    ),
                  ),
                ),

                // Wishlist Icon (Favorite Button)
                const Positioned(
                  top: 0,
                  right: 0,
                  child: TCircularIcon(
                    width: 40,
                    height: 40,
                    isDarkMode: false,
                    icon: Icon(
                      size: 20,
                      Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //---------------------- Details Section ----------------------//
          SizedBox(
            width: 200,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: TSizes.sizeSM, left: TSizes.sizeSM),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TProductTitleText(
                        title: "Smart Watch Series 7",
                        smallSize: true,
                      ),
                      SizedBox( 
                        height: TSizes.spaceBetweenItems / 2,
                      ),
                      TBrandTitleWithVerifiedBadge(
                        title: "Apple",
                      )
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        child: TProductPriceText(
                          price: "399",
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            right: TSizes.sizeSM, bottom: TSizes.sizeSM),
                        decoration: const BoxDecoration(
                            color: TColors.accent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(TSizes.cardSizeMD),
                                bottomRight: Radius.circular(
                                    TSizes.productImageRadius))),
                        child: const SizedBox(
                            width: TSizes.iconSizeLG * 1.2,
                            height: TSizes.iconSizeLG * 1.2,
                            child: Center(
                              child: Icon(
                                Iconsax.add,
                                color: TColors.light,
                              ),
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
