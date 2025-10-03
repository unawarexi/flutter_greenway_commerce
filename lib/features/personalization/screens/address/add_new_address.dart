import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/components/appbar/appbar.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const TAppBar(
        title: Text("Add New Address"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(TSizes.defaultSpace), child: Form(
          child: Column(
            children: [
              TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user), labelText: 'Name'),),
              const SizedBox(height: TSizes.spaceBetweenInputFields,),
              TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.mobile), labelText: 'Phone Number'),),
              const SizedBox(
                height: TSizes.spaceBetweenInputFields,
              ),
              Row(
                children: [
                   Expanded(
                     child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.building), labelText: 'Street'),
                                       ),
                   ),
                  const SizedBox(
                    width: TSizes.spaceBetweenInputFields,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.map),
                          labelText: 'Postal code'),
                    ),
                  ),
                ],
              ),
               const SizedBox(
                height: TSizes.spaceBetweenInputFields,
              ),
              Row(
                children: [
                   Expanded(
                     child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.building), labelText: 'City'),
                                       ),
                   ),
                  const SizedBox(
                    width: TSizes.spaceBetweenInputFields,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.activity),
                          labelText: 'State'),
                    ),
                  ),
                ],
              ),
                    const SizedBox(
                height: TSizes.spaceBetweenInputFields,
              ),
              TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.global), labelText: 'Country'),),
              const SizedBox(height: TSizes.defaultSpace),

              SizedBox( width: double.infinity, child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(backgroundColor: TColors.primary), child: const Text('save'),),)
              
            ],
          )
        ),)
      )
    );
  }
}