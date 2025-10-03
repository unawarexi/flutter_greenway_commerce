import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/containers/Rounded_container.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({
    super.key,
    required this.selectedAddress,
  });

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      padding: const EdgeInsets.all(TSizes.paddingMD),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? TColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? TColors.darkerGrey
              : TColors.grey,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBetweenItems),
      child: Stack(
        children: [
          Positioned(
            right: 6,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                      ? TColors.white
                      : TColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "DR. Dre",
                style: Theme.of(context).textTheme.titleLarge,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: TSizes.paddingSM / 2,
              ),
              const Text(
                "+1-262-372-4833",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: TSizes.paddingSM / 2,
              ),
              const Text(
                "135, california Timmy coves, avenue midwest U.S.A",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
              )
            ],
          )
        ],
      ),
    );
  }
}
