import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/components/products/add_remove_button.dart';
import 'package:greenway_commerce/common/components/products/cart_item.dart';
import 'package:greenway_commerce/common/components/texts_components/product_price_text.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';

class TCartWidget extends StatelessWidget {
  const TCartWidget({
    super.key, required this.showAddAndRemoveButton,
  });

  final bool showAddAndRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_, __) => const SizedBox(
        height: TSizes.spaceBetweenSections,
      ),
      itemCount: 2,
      shrinkWrap: true,
      itemBuilder: (__, index) => Column(
        children: [
          const TCartItem(),
         if (showAddAndRemoveButton)  const SizedBox(
              height: TSizes.spaceBetweenItems,
            ),
         if (showAddAndRemoveButton) const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 70,
                  ),
                  TProductAddAndRemoveButton(),
                ],
              ),
              TProductPriceText(price: '256'),
            ],
          )
        ],
      ),
    );
  }
}
