import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/components/appbar/appbar.dart';
import 'package:greenway_commerce/common/components/shared/circular_icon.dart';
import 'package:greenway_commerce/common/components/shared/product_card_vertical.dart';
import 'package:greenway_commerce/features/commerce/screens/home/home_screen.dart';
import 'package:greenway_commerce/layouts/grid_layouts.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';
import "package:get/get.dart";

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(
        title: Text("Wishlist", style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCircularIcon(
            isDarkMode:   THelperFunctions.isDarkMode(context),
            icon: const Icon(Iconsax.add), 
            onPressed: () => Get.to(const HomeScreen()),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical(),

           )
          ],
      )
    ));
  }
}
