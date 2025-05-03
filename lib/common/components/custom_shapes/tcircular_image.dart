import 'package:flutter/material.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
    this.width = 56,
    this.height = 56,
    this.padding = TSizes.sizeSM,
    this.fit = BoxFit.cover,
    this.isNetworkImage = false,
    this.backgroundColor,
    this.overlayColor,
    required this.image,
  });
  final double width, height, padding;
  final BoxFit? fit;
  final bool isNetworkImage;
  final Color? backgroundColor, overlayColor;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: THelperFunctions.isDarkMode(context)
            ? TColors.dark
            : TColors.light,
        borderRadius: BorderRadius.circular(
            TSizes.cardSizeLG),
      ),
                                
      child: Center(
        child: Image(
          fit: fit,
          image: isNetworkImage
              ? NetworkImage(image)
              : AssetImage(image) as ImageProvider,
        ),
      ));
  }
}
