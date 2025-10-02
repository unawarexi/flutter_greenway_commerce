import 'package:flutter/material.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    required this.isDarkMode,
    this.color,
    this.icon,
    this.onPressed,
  });

  final bool isDarkMode;
  final Color? color;
  final Widget? icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: isDarkMode
            ? TColors.black.withOpacity(0.9)
            : TColors.light.withOpacity(0.9),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: icon ?? Icon(Icons.help, color: color),
      ),
    );
  }
}
