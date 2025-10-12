import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/components/shared/product_card_vertical.dart';
import 'package:greenway_commerce/layouts/grid_layouts.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Dropdopwn for subcategories
        DropdownButtonFormField(
          items: const [
            'Newest',
            'Price: Low to High',
            'Price: High to Low',
            'Most Popular',
            'Best Rating',
            'Name',
            'Brand'
          ].map((option) {
            return DropdownMenuItem<String>(
              value: option,
              child: Text(option),
            );
          }).toList(),
          onChanged: (value) {},
          decoration:
              const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
        ),
    
        const SizedBox(
          height: TSizes.spaceBetweenSections,
        ),
    
        TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical())
      ],
    );
  }
}
