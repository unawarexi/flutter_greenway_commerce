import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/components/shared/brand_show_case.dart';
import 'package:greenway_commerce/common/components/shared/product_card_vertical.dart';
import 'package:greenway_commerce/common/components/texts_components/section_heading.dart';
import 'package:greenway_commerce/layouts/grid_layouts.dart';
import 'package:greenway_commerce/utils/constants/image_strings.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      children: [
        Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            const TBrandShowCase(brandImages: [TIamges.cardProduct1, TIamges.cardProduct1,  TIamges.cardProduct1],),
            const TBrandShowCase(brandImages: [TIamges.cardProduct1, TIamges.cardProduct1,  TIamges.cardProduct1],),
        
            TSectionHeading(title: 'You May Also Like', onPressed: (){}, ),
                const SizedBox(height: TSizes.spaceBetweenItems),
                TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical())
          ],
        ),
        ),
      ],
    );
  }
}
