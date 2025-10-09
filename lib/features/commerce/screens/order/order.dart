import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/components/appbar/appbar.dart';
import 'package:greenway_commerce/features/commerce/screens/order/widgets/order_list.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';

class OrderScreeen extends StatelessWidget {
  const OrderScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text("My Orders",  style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,

      ),
      body: const Padding(padding: EdgeInsets.all(TSizes.defaultSpace), child: TOrderListItems(
        
      ),),
    );
  }
}