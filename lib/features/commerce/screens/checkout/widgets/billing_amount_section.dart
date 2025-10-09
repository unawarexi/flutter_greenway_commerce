import 'package:flutter/material.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';

class TBillingAmountSection extends StatelessWidget {
  const TBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Text("Subtotal",
                    style: Theme.of(context).textTheme.bodyMedium)),
            Text("\$256", style: Theme.of(context).textTheme.bodyMedium)
          ],
        ),
        const SizedBox(height: TSizes.spaceBetweenItems / 2),

        // shipping
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Text("Shipping Fee",
                    style: Theme.of(context).textTheme.bodyMedium)),
            Text("\$6.0", style: Theme.of(context).textTheme.labelLarge)
          ],
        ),
        const SizedBox(height: TSizes.spaceBetweenItems / 2),

        // shipping
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Text("Tax fee",
                    style: Theme.of(context).textTheme.bodyMedium)),
            Text("\$6.0", style: Theme.of(context).textTheme.labelLarge)
          ],
        ),

        const SizedBox(height: TSizes.spaceBetweenItems / 2),

        // shipping
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Text("Order Total",
                    style: Theme.of(context).textTheme.bodyMedium)),
            Text("\$6.0", style: Theme.of(context).textTheme.titleMedium)
          ],
        )
      ],
    );
  }
}
