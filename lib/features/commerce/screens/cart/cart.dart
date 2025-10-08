import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greenway_commerce/common/components/appbar/appbar.dart';
import 'package:greenway_commerce/features/commerce/screens/cart/widgets/cart_widget.dart';
import 'package:greenway_commerce/features/commerce/screens/checkout/checkout.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TAppBar(
          showBackArrow: true,
          title: Text("cart", style: Theme.of(context).textTheme.headlineSmall),
        ),
        body: const Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: TCartWidget(showAddAndRemoveButton: true,),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: ElevatedButton(
            onPressed: () => Get.to(() => const CheckoutScreen()),
            style: ElevatedButton.styleFrom(
                backgroundColor: TColors.buttonPrimary),
            child: const Text('Checkout \$256'),
          ),
        ));
  }
}
