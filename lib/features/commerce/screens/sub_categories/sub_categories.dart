import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:greenway_commerce/common/components/appbar/appbar.dart';
import 'package:greenway_commerce/common/components/custom_shapes/rounded_image.dart';
import 'package:greenway_commerce/common/components/shared/product_card_horizontal.dart';
import 'package:greenway_commerce/common/components/texts_components/section_heading.dart';
import 'package:greenway_commerce/utils/constants/image_strings.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';

class SubCategories extends StatelessWidget {
  const SubCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Sub Categories'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TRoundedImage(
                imageURL: TIamges.promoBanner1,
                width: double.infinity,
                height: null,
                applyImageRadius: true,
              ),
              const SizedBox(
                height: TSizes.spaceBetweenItems,
              ),
              Column(
                children: [
                  TSectionHeading(
                    title: "sports & outdoor",
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: TSizes.spaceBetweenItems / 2,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemBuilder: (context, index) => const TProductCardHorizontal(),
                      separatorBuilder: (context, index) => const SizedBox(
                        height: TSizes.spaceBetweenItems,
                      ),
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
