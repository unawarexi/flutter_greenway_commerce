import 'package:flutter/material.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';

class TSliderImageText extends StatelessWidget {
  const TSliderImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = TColors.light,
    this.backgroundColor = TColors.light,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBetweenItems),
        child: Column(
          children: [
            //------- Circular shape
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(TSizes.sizeSM),
              decoration: BoxDecoration(
                color: backgroundColor ??
                    (isDarkMode ? TColors.black : TColors.light),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBetweenItems / 2,
            ),

            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
