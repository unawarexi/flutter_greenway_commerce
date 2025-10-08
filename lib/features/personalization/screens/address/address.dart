import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greenway_commerce/common/components/appbar/appbar.dart';
import 'package:greenway_commerce/features/personalization/screens/address/add_new_address.dart';
import 'package:greenway_commerce/features/personalization/screens/address/widgets/single_address.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => const AddNewAddress()),
        backgroundColor: TColors.primary,
        child: const Icon(
          Iconsax.add,
          color: TColors.white,
        ),
      ),
      appBar:  TAppBar(title: Text("address", style: Theme.of(context).textTheme.headlineSmall), showBackArrow: true,),

      body: const SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace), child: Column(
          children: [
            TSingleAddress(selectedAddress: true,),
            TSingleAddress(selectedAddress: false,)
          ],
        ),),
      ),
    );
  }
}
