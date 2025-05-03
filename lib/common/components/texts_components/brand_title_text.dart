import 'package:flutter/material.dart';
import 'package:greenway_commerce/utils/constants/enums.dart';

class TBrandTtileText extends StatelessWidget {
  const TBrandTtileText({
    super.key,
      this.color,
      this.brandTitleTextSize = TextSizes.small,
      this.maxLines = 1,
      this.textAlign = TextAlign.center,
      required this.title,
    });


  final String title;
  final int maxLines;
  final TextAlign textAlign;
  final TextSizes brandTitleTextSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return  Text (
      title,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,

      // check which brand size is required and set that style
      style: brandTitleTextSize == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium?.copyWith(
                color: color,
              )
          : brandTitleTextSize == TextSizes.medium
              ? Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: color,
                  )

                  : brandTitleTextSize == TextSizes.large
                      ? Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: color,
                          )
                      : Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: color,
                          ),
    );
  }
}