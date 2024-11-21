import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greenway_commerce/common/components/texts_components/section_heading.dart';
import 'package:greenway_commerce/common/containers/primary_header_container.dart';
import 'package:greenway_commerce/common/containers/search_container.dart';
import 'package:greenway_commerce/features/commerce/controllers/home_carousel_indicator.dart';
import 'package:greenway_commerce/features/commerce/screens/home/presentation/home_appbar.dart';
import 'package:greenway_commerce/features/commerce/screens/home/presentation/home_categories.dart';
import 'package:greenway_commerce/features/commerce/screens/home/presentation/carousel_slider.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //--------------- APPBAR FOR HOME SCREEN ----
                  THomeAppBar(),

                  SizedBox(
                    height: TSizes.spaceBetweenSections,
                  ),

                  //--------------- SEARCH BAR --------------
                  TSearchContainer(
                    text: 'Search Up GreenWay...',
                  ),

                  SizedBox(
                    height: TSizes.spaceBetweenSections,
                  ),

                  //------------------ CATEGORIES -----------
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        // ======== Heading
                        TSectionHeading(
                          title: "popular categories",
                          showActionsButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBetweenItems,
                        ),

                        ///======== categories
                        THomeCategories()
                      ],
                    ),
                  )
                ],
              ),
            ),

            //=============== HOME BODY ===================== //
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: TCarouselSlider(),
            ),
          ],
        ),
      ),
    );
  }
}
