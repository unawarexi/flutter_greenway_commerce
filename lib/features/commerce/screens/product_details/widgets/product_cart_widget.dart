import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/components/shared/circular_icon.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class TBottomAddToCart extends StatelessWidget {
  const TBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
        padding: const EdgeInsets.symmetric(
            horizontal: TSizes.defaultSpace, vertical: TSizes.defaultSpace / 2),
        decoration: BoxDecoration(
            color: dark ? TColors.darkerGrey : TColors.light,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(TSizes.cardSizeLG),
              topRight: Radius.circular(TSizes.cardSizeLG),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const TCircularIcon(
                    isDarkMode: false,
                    icon: Icon(
                      Iconsax.minus,
                      color: TColors.white,
                    ),
                    backgroundColor: TColors.darkGrey,
                    width: 40,
                    height: 40,
                    color: TColors.white),
                const SizedBox(
                  width: TSizes.spaceBetweenItems,
                ),
                Text(
                  "2",
                  style: Theme.of(context).textTheme.titleSmall!,
                ),
                const SizedBox(
                  width: TSizes.spaceBetweenItems,
                ),
                const TCircularIcon(
                    isDarkMode: false,
                    icon: Icon(
                      Iconsax.add,
                      color: TColors.white,
                    ),
                    backgroundColor: TColors.black,
                    width: 40,
                    height: 40,
                    color: TColors.white),
              ],
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: TColors.black),
                    backgroundColor: TColors.black,
                    padding: const EdgeInsets.only(
                        left: TSizes.sizeSM, right: TSizes.sizeSM)),
                child: const Text("add to cart"))
          ],
        ));
  }
}
