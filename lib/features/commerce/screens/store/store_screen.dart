import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/components/appbar/appbar.dart';
import 'package:greenway_commerce/common/components/custom_shapes/tcircular_image.dart';
import 'package:greenway_commerce/common/components/shared/brand_verified_badge.dart';
import 'package:greenway_commerce/common/components/shared/cart_counter_icon.dart';
import 'package:greenway_commerce/common/components/texts_components/section_heading.dart';
import 'package:greenway_commerce/common/containers/Rounded_container.dart';
import 'package:greenway_commerce/common/containers/search_container.dart';
import 'package:greenway_commerce/layouts/grid_layouts.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/enums.dart';
import 'package:greenway_commerce/utils/constants/image_strings.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TAppBar(
          title:
              Text("Store", style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            TCartCounterIcon(
              onPressed: () {},
              iconColor: null,
            )
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  expandedHeight: 440,
                  pinned: true,
                  floating: true,
                  backgroundColor: THelperFunctions.isDarkMode(context)
                      ? TColors.black
                      : TColors.white,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: [
                        // Search Bar
                        const SizedBox(height: TSizes.spaceBetweenItems),
                        const Padding(
                          padding: EdgeInsets.only(bottom: TSizes.defaultSpace),
                          child: TSearchContainer(
                            text: 'Search Up GreenWay...',
                            showBorder: true,
                            showBackGround: false,
                            padding: EdgeInsets.zero,
                          ),
                        ),
                        const SizedBox(height: TSizes.spaceBetweenSections),

                        //---------------------------- BRANDS
                        TSectionHeading(
                          title: "Featured Brands",
                          onPressed: () {},
                        ),
                        const SizedBox(height: TSizes.spaceBetweenItems / 1.5),

                        TGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 88,
                            itemBuilder: (_, index) {
                              return GestureDetector(
                                onTap: () {},
                                child: TRoundedContainer(
                                    padding: const EdgeInsets.all(
                                        TSizes.defaultSpace),
                                    backgroundColor: Colors.transparent,
                                    showBorder: true,
                                    child: Row(
                                      //icon
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        //icon
                                        const Flexible(
                                          child: TCircularImage(
                                            isNetworkImage: false,
                                            image: TIamges.homeAndGarden,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: TSizes.spaceBetweenItems / 2,
                                        ),

                                        //-------------------------- brand name
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const TBrandTitleWithVerifiedBadge(
                                                title: 'Nike',
                                                brandTitleTextSize:
                                                    TextSizes.large,
                                              ),
                                              Text(
                                                "256 Products",
                                                overflow: TextOverflow.ellipsis,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelMedium,
                                              ),
                                            ],
                                          ),
                                        ),
                                        
                                      ],
                                    )),
                              );
                            })
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: Container()));
  }
}
