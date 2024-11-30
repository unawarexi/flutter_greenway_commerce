import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/components/custom_shapes/rounded_image.dart';
import 'package:greenway_commerce/common/components/shared/circular_icon.dart';
import 'package:greenway_commerce/common/components/texts_components/product_title_text.dart';
import 'package:greenway_commerce/common/containers/Rounded_container.dart';
import 'package:greenway_commerce/common/styles/shadows.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/image_strings.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);
    return Container(
      width: 200,
      padding:
          const EdgeInsets.all(TSizes.sizeXS), // Slight padding for neatness
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: isDarkMode ? TColors.darkerGrey : TColors.light,
        boxShadow: [TShadowStyle.verticalShadow],
      ),
      child: Column(
        children: [
          // Thumbnail, Wishlist, Discount Tag
          TRoundedContainer(
            height: 180,

            // padding: const EdgeInsets.all(TSizes.sizeSM),
            backgroundColor:
                isDarkMode ? TColors.dark : TColors.primaryBackground,
            child: Stack(
              children: [
                // Product Image
                const TRoundedImage(
                  height:
                      180, // Set height to take half of the container's height (in fractional units)
                  imageURL: TIamges.promoBanner1,
                  // applyImageRadius: true,
                ),

                // Discount Tag
                Positioned(
                  top: 10,
                  left: 10,
                  child: TRoundedContainer(
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
                ),

                // Wishlist Icon (Favorite Button)
                const Positioned(
                  top: 8,
                  right: 8,
                  child: TCircularIcon(
                    isDarkMode: false,
                    icon: Icon(
                      Iconsax.heart5,
                      color: Colors.red,
                      size: TSizes.iconSizeSM, // Reduced size for modern look
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: TSizes.spaceBetweenItems),

          // Product Details
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: TSizes.sizeSM),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product Title
                const TProductTitleText(
                  title: 'Green Nike Sneakers',
                  smallSize: true,
                ),

                const SizedBox(height: TSizes.sizeXS),

                // Brand and Verified Badge
                Row(
                  children: [
                    Text(
                      "Nike",
                      style: Theme.of(context).textTheme.labelLarge,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    const SizedBox(width: TSizes.sizeXS),
                    const Icon(
                      Iconsax.verify5,
                      color: TColors.primary,
                      size: TSizes.iconSizeXS,
                    ),
                  ],
                ),

                const SizedBox(height: TSizes.sizeXS),

                // Price
                Row(
                  children: [
                    Text(
                      "\$35.50",
                      style: Theme.of(context).textTheme.headlineMedium!.apply(
                          fontWeightDelta: 2, // Emphasizing the price
                          color: TColors.primary),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(TSizes.cardSizeMD),
                              bottomRight:
                                  Radius.circular(TSizes.productImageRadius))),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
