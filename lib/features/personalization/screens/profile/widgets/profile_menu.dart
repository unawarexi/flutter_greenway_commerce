import 'package:flutter/material.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class TProfileMenu extends StatelessWidget {
  const TProfileMenu({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onPressed,
    this.icon = Iconsax.arrow_right_34,
  });

  final String title;
  final String subTitle;
  final VoidCallback onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: TSizes.spaceBetweenItems / 1.5, 
         
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Title
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),

            const SizedBox(
                width: TSizes
                    .spaceBetweenItems), 

            // Subtitle
            Expanded(
              flex: 5,
              child: Text(
                subTitle,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600, 
                      color: Colors.black87, 
                    ),
                overflow: TextOverflow.ellipsis,
              ),
            ),

            const SizedBox(width: TSizes.marginSM), 

            // Icon
            Icon(
              icon,
              size: 20,
              color: Colors.grey.shade600,
            ),
          ],
        ),
      ),
    );
  }
}
