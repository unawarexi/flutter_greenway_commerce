import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:greenway_commerce/common/components/appbar/appbar.dart';
import 'package:greenway_commerce/common/components/custom_shapes/rounded_image.dart';
import 'package:greenway_commerce/common/components/shared/circular_icon.dart';
import 'package:greenway_commerce/common/components/shared/curved_edges_widgets.dart';
import 'package:greenway_commerce/common/components/texts_components/section_heading.dart';
import 'package:greenway_commerce/features/commerce/screens/product_details/widgets/product_attributes.dart';
import 'package:greenway_commerce/features/commerce/screens/product_details/widgets/product_cart_widget.dart';
import 'package:greenway_commerce/features/commerce/screens/product_details/widgets/product_image_slider.dart';
import 'package:greenway_commerce/features/commerce/screens/product_details/widgets/product_meta_data.dart';
import 'package:greenway_commerce/features/commerce/screens/product_details/widgets/rating_share_widget.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/image_strings.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        // Product Images and Details will go here
        const TProductImageSlider(),

        // Other product details can be added here
        Padding(
            padding: const EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace),
            child: Column(
              children: [
                // Product title, price, description, etc.
                const TRatingAndShare(),

                const TProductMetaData(),

                const TProductAttributes(),

                const SizedBox(
                  height: TSizes.spaceBetweenItems,
                ),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: TColors.buttonPrimary,
                    ),
                    child: const Text("Checkout"),
                  ),
                ),

                const SizedBox(
                  height: TSizes.spaceBetweenItems,
                ),

                const TSectionHeading(
                  title: "Descrition",
                  showActionsButton: false,
                ),

                const SizedBox(
                  height: TSizes.spaceBetweenItems / 2,
                ),

                const ReadMoreText(
                  'this is a product description about evrythig you want to know about the product and how to go about purchasing it, select your color variants and sizes depending on your nation and select your mode of payment ',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: "Less",
                  trimCollapsedText: "show More",
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      color: TColors.primary),
                  lessStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                ),

                const Divider(),
                const SizedBox( height: TSizes.spaceBetweenItems,),
                TSectionHeading(title: "Reviews", showActionsButton: false, onPressed: (){},),
                const SizedBox(height: TSizes.spaceBetweenSections,)
              ],
            )),

            const TBottomAddToCart()
      ],
    )));
  }
}
