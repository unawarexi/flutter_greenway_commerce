import 'package:flutter/material.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';

class TProductPriceText extends StatelessWidget {
  const TProductPriceText(
      {super.key,
      required this.price,
      this.currency = "\$",
      this.isLarge = false,
      this.lineThrough = false,
      this.maxLines = 1});

  final String currency, price;
  final bool isLarge;
  final bool lineThrough;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(currency + price,
        overflow: TextOverflow.ellipsis,
        style: isLarge
            ? Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: TColors.primary, fontWeight: FontWeight.bold)
                .apply(
                    decoration: lineThrough ? TextDecoration.lineThrough : null)
            : Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: TColors.primary, fontWeight: FontWeight.bold)
                .apply(
                    decoration:
                        lineThrough ? TextDecoration.lineThrough : null));
  }
}
