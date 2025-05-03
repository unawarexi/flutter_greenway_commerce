// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/components/texts_components/brand_title_text.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/enums.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class TBrandTitleWithVerifiedBadge extends StatelessWidget {
  const TBrandTitleWithVerifiedBadge({
    super.key,
    this.textColor,
    this.iconColor = TColors.primary,
    this.brandTitleTextSize = TextSizes.small,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.title = "Nike",
  });

  final String title;
  final int maxLines;
  final TextAlign textAlign;
  final TextSizes brandTitleTextSize;
  final Color? textColor, iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TBrandTtileText(
              title: title,
              maxLines: maxLines,
              textAlign: textAlign,
              brandTitleTextSize: brandTitleTextSize,
              color: textColor),
        ),
        const SizedBox(width: TSizes.sizeXS),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: TSizes.iconSizeXS,
        ),
      ],
    );
  }
}
