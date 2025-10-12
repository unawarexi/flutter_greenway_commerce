import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/components/products/rating_bar_indicator.dart';
import 'package:greenway_commerce/common/containers/rounded_container.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/image_strings.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  backgroundColor: TColors.grey,
                  backgroundImage: AssetImage(TIamges.promoBanner1),
                ),
                const SizedBox(
                  width: TSizes.spaceBetweenItems,
                ),
                Text('Joh doe', style: Theme.of(context).textTheme.titleLarge)
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(
          width: TSizes.spaceBetweenItems,
        ),
        Row(
          children: [
            const TRatingBarIndicator(rating: 4),
            const SizedBox(
              width: TSizes.spaceBetweenItems,
            ),
            Text("01 Nov, 2023", style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBetweenItems,
        ),
        const ReadMoreText(
          'this is a product description about evrythig you want to know about the product and how to go about purchasing it, select your color variants and sizes depending on your nation and select your mode of payment ',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: "Less",
          trimCollapsedText: "show More",
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w800,
              color: TColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w800,
              color: TColors.primary),
        ),
        const SizedBox(
          height: TSizes.spaceBetweenItems,
        ),
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.paddingMD),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("dre Store",
                        style: Theme.of(context).textTheme.bodyLarge),
                    Text("01 Nov, 2023",
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(
                  height: TSizes.spaceBetweenItems,
                ),
                const ReadMoreText(
                  'this is a product description about evrythig you want to know about the product and how to go about purchasing it, select your color variants and sizes depending on your nation and select your mode of payment ',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: "Less",
                  trimCollapsedText: "show More",
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      color: TColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      color: TColors.primary),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
