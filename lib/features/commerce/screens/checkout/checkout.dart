import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greenway_commerce/common/components/appbar/appbar.dart';
import 'package:greenway_commerce/common/components/products/coupon_code.dart';
import 'package:greenway_commerce/common/components/success_screens/success_screens.dart';
import 'package:greenway_commerce/common/containers/Rounded_container.dart';
import 'package:greenway_commerce/features/commerce/screens/cart/widgets/cart_widget.dart';
import 'package:greenway_commerce/features/commerce/screens/checkout/widgets/billing_address_section.dart';
import 'package:greenway_commerce/features/commerce/screens/checkout/widgets/billing_amount_section.dart';
import 'package:greenway_commerce/features/commerce/screens/checkout/widgets/billing_payment_section.dart';
import 'package:greenway_commerce/layouts/navigation_menu.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/image_strings.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
        appBar: TAppBar(
          showBackArrow: true,
          title: Text("Order Review",
              style: Theme.of(context).textTheme.headlineSmall),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                // -------------- Items In cart
                const TCartWidget(showAddAndRemoveButton: false),
                const SizedBox(
                  height: TSizes.spaceBetweenSections,
                ),

                // -------------- Coupon TextField
                const TCouponCode(),

                const SizedBox(
                  height: TSizes.spaceBetweenSections,
                ),
                // --------- Billing section
                TRoundedContainer(
                  showBorder: true,
                  padding: const EdgeInsets.all(TSizes.paddingMD),
                  backgroundColor: dark ? TColors.black : TColors.white,
                  child: const Column(
                    children: [
                      TBillingAmountSection(),
                      SizedBox(
                        height: TSizes.spaceBetweenItems,
                      ),
                      Divider(),
                      SizedBox(
                        height: TSizes.spaceBetweenItems,
                      ),
                      TBillingPaymentSection(),
                      SizedBox(
                        height: TSizes.spaceBetweenItems,
                      ),
                      TBillingAddressSection()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: ElevatedButton(
            onPressed: () => Get.to(() => SuccessScreen(
                  image: TIamges.payment,
                  imageSize: 500,
                  
                  title: 'Payment Sucessful',
                  subtitle: 'Verify your Reciept, Alert us for More assistance',
                  onPressed: () => Get.offAll(() => const BottomNavigationMenu()),
                )),
            style: ElevatedButton.styleFrom(
                backgroundColor: TColors.buttonPrimary),
            child: const Text('Checkout \$256'),
          ),
        ));
  }
}
