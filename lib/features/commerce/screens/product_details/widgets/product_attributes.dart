import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/components/choice_chips/choice_chips.dart';
import 'package:greenway_commerce/common/components/texts_components/product_price_text.dart';
import 'package:greenway_commerce/common/components/texts_components/product_title_text.dart';
import 'package:greenway_commerce/common/components/texts_components/section_heading.dart';
import 'package:greenway_commerce/common/containers/rounded_container.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
      children: [
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.paddingMD),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row for variation, price, and status
              Row(
                children: [
                  const TSectionHeading(
                    title: "Variation:",
                    showActionsButton: false,
                  ),
                  const SizedBox(width: TSizes.spaceBetweenItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Price row
                      Row(
                        children: [
                          const TProductTitleText(title: "Price:"),
                          const SizedBox(width: TSizes.spaceBetweenItems / 2),

                          // Actual price (strikethrough)
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  decoration: TextDecoration.lineThrough,
                                ),
                          ),
                          const SizedBox(width: TSizes.spaceBetweenItems),

                          // Sale price
                          const TProductPriceText(price: "20"),
                        ],
                      ),
                      const SizedBox(height: TSizes.spaceBetweenItems),

                      // Status row
                      Row(
                        children: [
                          const TProductTitleText(title: "Status:"),
                          const SizedBox(width: TSizes.spaceBetweenItems),
                          Text(
                            "In stock",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: TSizes.spaceBetweenItems),
              const TProductTitleText(
                title: "This is a description of every product to be displayed",
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),

         const SizedBox(height: TSizes.spaceBetweenItems),
         // Attributes

     Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// ----- Colors -----
            const TSectionHeading(title: "Colors", showActionsButton: false,),
            const SizedBox(height: TSizes.spaceBetweenItems / 2),
            Wrap(
              spacing: TSizes.spaceBetweenItems,
              children:  [
                TChoiceChip(
                    text: "Red", selected: true, onSelected: (value) {}),
                TChoiceChip(
                    text: "Green", selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: "Blue", selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: "Black", selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: "blue", selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: "Yellow", selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: "Purple", selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: "Orange", selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: "Grey", selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: "Brown", selected: false, onSelected: (value) {}),
              ],
            ),

            const SizedBox(height: TSizes.spaceBetweenSections,),

            /// ----- Sizes -----
            const TSectionHeading(title: "Sizes", showActionsButton: false,),
            const SizedBox(height: TSizes.spaceBetweenItems / 2),
            Wrap(
              spacing: TSizes.spaceBetweenItems,
              children: [
                TChoiceChip(
                    text: "US 6", selected: true, onSelected: (value) {}),
                TChoiceChip(
                    text: "US 7", selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: "US 8", selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: "US 9", selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: "US 10", selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: "EU 39", selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: "EU 40", selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: "EU 41", selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: "UK 7", selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: "UK 8", selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        )

      ],
    );
  }
}
