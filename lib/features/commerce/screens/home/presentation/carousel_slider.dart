import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greenway_commerce/common/components/custom_shapes/rounded_image.dart';
import 'package:greenway_commerce/common/containers/circular_container.dart';
import 'package:greenway_commerce/features/commerce/controllers/home_carousel_indicator.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/image_strings.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';

class TCarouselSlider extends StatelessWidget {
  const TCarouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    // Use the instance of the controller
    final carouselController = Get.put(HomeCarouselIndicatorController());

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.easeInOut,
            viewportFraction: 0.85, // Allows partial view of the next image
            enlargeCenterPage: true, // Scales the current image slightly
            onPageChanged: (index, _) {
              // Update the current index when the page changes
              carouselController.updateIndex(index);
            },
          ),
          items: const [
            TRoundedImage(imageURL: TIamges.promoBanner1),
            TRoundedImage(imageURL: TIamges.promoBanner2),
            TRoundedImage(imageURL: TIamges.promoBanner3),
            TRoundedImage(imageURL: TIamges.promoBanner4),
            TRoundedImage(imageURL: TIamges.promoBanner5),
            TRoundedImage(imageURL: TIamges.promoBanner6),
            TRoundedImage(imageURL: TIamges.promoBanner7),
          ],
        ),
        const SizedBox(height: TSizes.spaceBetweenItems),

        // Indicator Row with GetX to observe changes
        Obx(() {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(7, (index) {
              return TCircularContainer(
                width: 10, // Smaller width for modern design
                height: 4, // Make the indicators circular
                margin: const EdgeInsets.only(right: 8),
                backgroundColor:
                    carouselController.carouselCurrentIndex.value == index
                        ? TColors.success
                        : TColors.grey,
              );
            }),
          );
        }),
      ],
    );
  }
}
