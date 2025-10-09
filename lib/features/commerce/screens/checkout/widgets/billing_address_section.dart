import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/components/texts_components/section_heading.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Text(
          'Dr Dre',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
         const SizedBox(
          height: TSizes.spaceBetweenItems / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.phone,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(
              width: TSizes.spaceBetweenItems,
            ),
            Text(
              '+1-234-4733-3838',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBetweenItems / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.location_history,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(
              width: TSizes.spaceBetweenItems,
            ),
            Text(
              'South Liana, Maine 87695, usa',
              style: Theme.of(context).textTheme.bodyMedium,
              softWrap: true,
            )
          ],
        ),
      ],
    );
  }
}
