import 'package:flutter/material.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    this.isDarkMode,
    this.color,
    this.icon,
    this.onPressed,
    this.width = 50,
    this.height = 50,
    this.backgroundColor,
    this.size, // 👈 optional size parameter added
  });

  final bool? isDarkMode;
  final Color? color;
  final Widget? icon;
  final VoidCallback? onPressed;
  final double width;
  final double height;
  final Color? backgroundColor;
  final double? size; // 👈 optional icon size

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor ??
            (isDarkMode!
                ? TColors.black.withOpacity(0.9)
                : TColors.light.withOpacity(0.9)),
      ),
      child: IconButton(
        onPressed: onPressed,
        iconSize: size, 
        icon: icon ?? Icon(Icons.help, color: color, size: size),
        color: color,
      ),
    );
  }
}
