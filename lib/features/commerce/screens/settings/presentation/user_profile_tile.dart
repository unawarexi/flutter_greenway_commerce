import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/components/custom_shapes/tcircular_image.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/image_strings.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: TSizes.spaceBetweenSections), // Add bottom padding
      child: ListTile(
        leading: const TCircularImage(image: TIamges.darkAppLogo, width: 50, height: 50, padding: 0, ),
        title: Text("DR. Dre", style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white)),
        subtitle: Text("opensource.chukwuweike.dev@gmil.com", style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white)),
        trailing: IconButton(icon: const Icon(Iconsax.edit), color: TColors.white, onPressed: (){},),
        onTap: () {
          // Handle account settings tap
        },
      ),
    );
  }
}
