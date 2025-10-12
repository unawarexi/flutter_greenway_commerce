import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greenway_commerce/common/components/appbar/appbar.dart';
import 'package:greenway_commerce/common/components/shared/brand_card.dart';
import 'package:greenway_commerce/common/components/texts_components/section_heading.dart';
import 'package:greenway_commerce/features/commerce/screens/brands/brand_products.dart';
import 'package:greenway_commerce/layouts/grid_layouts.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('All Brands'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            // Add your widgets here
            const TSectionHeading(
              title: 'Brands',
              showActionsButton: false,
            ),
            const SizedBox(
              height: TSizes.spaceBetweenItems,
            ),

            TGridLayout(
                itemCount: 8,
                mainAxisExtent: 80,
                itemBuilder: (context, index) => TBrandCard(
                      showBorder: true,
                      onTap: () => Get.to(() => const BrandProducts()),
                    ))
          ],
        ),
      ),
    );
  }
}
