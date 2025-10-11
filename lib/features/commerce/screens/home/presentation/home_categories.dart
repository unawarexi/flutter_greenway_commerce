import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greenway_commerce/common/components/shared/slider_image_text.dart';
import 'package:greenway_commerce/features/commerce/screens/sub_categories/sub_categories.dart';
import 'package:greenway_commerce/utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return TSliderImageText(
            image: TIamges.groceries,
            title: ' "items category"',
            onTap: () {
              Get.to(() => const SubCategories());
            },
          );
        },
      ),
    );
  }
}
