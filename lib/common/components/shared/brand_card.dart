import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/components/custom_shapes/tcircular_image.dart';
import 'package:greenway_commerce/common/components/shared/brand_verified_badge.dart';
import 'package:greenway_commerce/common/containers/Rounded_container.dart';
import 'package:greenway_commerce/utils/constants/enums.dart';
import 'package:greenway_commerce/utils/constants/image_strings.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });
  final bool showBorder;
  final void Function()? onTap ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
          padding: const EdgeInsets.all( 8.0),
          backgroundColor: Colors.transparent,
          showBorder: showBorder,
          child: Row(
            //icon
           crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //icon
              const Flexible(
                child: TCircularImage(
                  isNetworkImage: false,
                  image: TIamges.homeAndGarden,
                ),
              ),
              const SizedBox(
                width: TSizes.spaceBetweenItems / 2,
              ),
          
              //-------------------------- brand name
              Expanded(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: [
                    const TBrandTitleWithVerifiedBadge(
                      title: 'Nike',
                      brandTitleTextSize:
                          TextSizes.large,
                    ),
                    Text(
                      "256 Products",
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium,
                    ),
                  ],
                ),
              ),
                
            ],
          )),
    );
  }
}
