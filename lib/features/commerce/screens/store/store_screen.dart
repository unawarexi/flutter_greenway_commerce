import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greenway_commerce/common/components/appbar/appbar.dart';
import 'package:greenway_commerce/common/components/appbar/tab_bar.dart';
import 'package:greenway_commerce/common/components/shared/brand_card.dart';
import 'package:greenway_commerce/common/components/shared/cart_counter_icon.dart';
import 'package:greenway_commerce/common/components/texts_components/section_heading.dart';
import 'package:greenway_commerce/common/containers/search_container.dart';
import 'package:greenway_commerce/features/commerce/screens/brands/all_brands.dart';
import 'package:greenway_commerce/features/commerce/screens/store/presentation/category_tab.dart';
import 'package:greenway_commerce/layouts/grid_layouts.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 11,
      child: Scaffold(
          appBar: TAppBar(
            title: Text("Store",
                style: Theme.of(context).textTheme.headlineMedium),
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
                            padding:
                                EdgeInsets.only(bottom: TSizes.defaultSpace),
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
                            onPressed: () =>
                                Get.to(() => const AllBrandsScreen()),
                          ),
                          const SizedBox(
                              height: TSizes.spaceBetweenItems / 1.5),

                          TGridLayout(
                              itemCount: 4,
                              mainAxisExtent: 70,
                              itemBuilder: (_, index) {
                                return TBrandCard(
                                  showBorder: false,
                                  onTap: () {},
                                );
                              }),
                          // Add extra spacing to ensure brand items are fully visible before the TabBar
                          const SizedBox(
                              height: TSizes.spaceBetweenSections * 20),
                        ],
                      ),
                    ),

                    //---------------------------- SLIDDABLE TABS
                    bottom: const TTabBar(
                      tabs: [
                        Tab(child: Text("All")),
                        Tab(child: Text("Automotive")),
                        Tab(child: Text("Home & Garden")),
                        Tab(child: Text("Fashion")),
                        Tab(child: Text("Beauty")),
                        Tab(child: Text("Groceries")),
                        Tab(child: Text("Toys")),
                        Tab(child: Text("Books")),
                        Tab(child: Text("Sports")),
                        Tab(child: Text("Electronics")),
                        Tab(child: Text("Jewelry")),
                      ],
                    ),
                  ),
                ];
              },
              body: const TabBarView(children: [
                CategoryTab(),
                CategoryTab(),
                CategoryTab(),
                CategoryTab(),
                CategoryTab(),
                CategoryTab(),
                CategoryTab(),
                CategoryTab(),
                CategoryTab(),
                CategoryTab(),
                CategoryTab(),
              ]))),
    );
  }
}
