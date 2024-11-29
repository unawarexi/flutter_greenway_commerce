import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/components/custom_shapes/rounded_image.dart';
import 'package:greenway_commerce/common/containers/Rounded_container.dart';
import 'package:greenway_commerce/common/styles/shadows.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: isDarkMode ? TColors.darkerGrey : TColors.light,
          boxShadow: [TShadowStyle.verticalShadow]),
      child: Column(
        children: [
          ///---------- ThumbNail, Wishlist, Discuount Tag
          TRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(TSizes.sizeSM),
            backgroundColor: isDarkMode ? TColors.dark : TColors.light,
          )
        ],
      ),
    );
  }
}
