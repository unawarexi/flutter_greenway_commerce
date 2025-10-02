import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:greenway_commerce/common/components/appbar/appbar.dart';
import 'package:greenway_commerce/common/components/custom_shapes/rounded_image.dart';
import 'package:greenway_commerce/common/components/shared/circular_icon.dart';
import 'package:greenway_commerce/common/components/shared/curved_edges_widgets.dart';
import 'package:greenway_commerce/features/commerce/screens/product_details/widgets/product_image_slider.dart';
import 'package:greenway_commerce/features/commerce/screens/product_details/widgets/product_meta_data.dart';
import 'package:greenway_commerce/features/commerce/screens/product_details/widgets/rating_share_widget.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/image_strings.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        // Product Images and Details will go here
        TProductImageSlider(),

        // Other product details can be added here
        Padding(
            padding: EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace),
            child: Column(
              children: [
                // Product title, price, description, etc.
                TRatingAndShare(),

                TProductMetaData(),
              ],
            ))
      ],
    )));
  }
}
