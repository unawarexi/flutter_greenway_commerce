import 'package:flutter/material.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:lottie/lottie.dart';


class TAnimationLoaderWidget extends StatelessWidget {
  const TAnimationLoaderWidget({super.key, required this.text, required this.animation, this.onActionPressed, this.actionText, this.showAction = false});

  final String text, animation;
  final VoidCallback? onActionPressed;
  final bool showAction ;
  final String? actionText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(animation, width: MediaQuery.of(context).size.width * 0.8),
          const SizedBox(height: TSizes.defaultSpace),
          Text(text, style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center),
          const SizedBox(height: TSizes.defaultSpace),
          if (showAction)
            SizedBox(
              width: 150,
              child: OutlinedButton(
                onPressed: onActionPressed,
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  backgroundColor: TColors.dark
                ),
                child: Text(actionText ?? 'Retry'),
              ),
            )
        ],
      ),
    );
  }
}
