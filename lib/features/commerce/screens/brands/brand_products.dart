import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/components/appbar/appbar.dart';
import 'package:greenway_commerce/common/components/products/sortable_products.dart';
import 'package:greenway_commerce/common/components/shared/brand_card.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(
        title: Text('Nike'),
        showBackArrow: true,
      ),

       body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            // Add your widgets here
            TBrandCard(showBorder:  true, onTap: null),
            SizedBox(height: TSizes.spaceBetweenSections,),
            TSortableProducts(),
          ],
        ),),
       )
    );
  }
}