import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/components/shared/brand_card.dart';
import 'package:greenway_commerce/common/containers/Rounded_container.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key,
    required this.brandImages,
  });

  final List<String> brandImages;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      padding: const EdgeInsets.all(TSizes.sizeMD),
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBetweenItems),
      child: Column(
         children: [
           TBrandCard(
          showBorder: false,
          onTap: (){},
          ),
          const SizedBox(height: TSizes.spaceBetweenItems),
          /// brand top 3 products images
          Row(
            children: brandImages.map((image) => brandTopProductImageWidget(image, context)).toList(),)
         ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: TRoundedContainer(
        height: 100,
        backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkGrey : TColors.light,
        margin: const EdgeInsets.only(right: TSizes.sizeSM),
        padding: const EdgeInsets.all(TSizes.sizeMD),
        child: Image(image: AssetImage(image), fit: BoxFit.cover,),
      ),
    );
  }
}
