import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greenway_commerce/features/commerce/screens/cart/cart.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key,
    required this.iconColor,
    required this.onPressed,
  });

  final Color? iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      IconButton(
        iconSize: 30,
        onPressed: () => Get.to(() => const CartScreen()),
        icon: Icon(
          Iconsax.shopping_bag,
          color: iconColor,
        ),
      ),
      Positioned(
        right: 0,
        child: Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
              color: TColors.error, borderRadius: BorderRadius.circular(100)),
          child: Center(
            child: Text("2",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.light, fontSizeFactor: 0.8)),
          ),
        ),
      )
    ]);
  }
}
