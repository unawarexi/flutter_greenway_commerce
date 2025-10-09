import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greenway_commerce/common/components/appbar/appbar.dart';
import 'package:greenway_commerce/common/components/texts_components/section_heading.dart';
import 'package:greenway_commerce/common/containers/primary_header_container.dart';
import 'package:greenway_commerce/features/commerce/screens/order/order.dart';
import 'package:greenway_commerce/features/commerce/screens/settings/presentation/settings_menu_tile.dart';
import 'package:greenway_commerce/features/commerce/screens/settings/presentation/user_profile_tile.dart';
import 'package:greenway_commerce/features/personalization/screens/address/address.dart';
import 'package:greenway_commerce/features/personalization/screens/profile/profile.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                TAppBar(
                    title: Text("Settings",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .apply(color: TColors.white))),
                const SizedBox(height: TSizes.spaceBetweenItems),
                TUserProfileTile(
                    onPressed: () => Get.to(() => const ProfileScreen())),
              ],
            )),
            Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    const TSectionHeading(
                      title: "Account Settings",
                      showActionsButton: false,
                    ),
                    const SizedBox(height: TSizes.spaceBetweenItems),
                    TSettingsMenuTile(
                        icon: Iconsax.safe_home,
                        title: "My Addresses",
                        subtitle: "Set your default shipping address",
                        onTap: () => Get.to(() => const AddressScreen())),
                    TSettingsMenuTile(
                      icon: Iconsax.shopping_cart,
                      title: "My Cart",
                      subtitle: "View items in your cart",
                      onTap: () {
                        // Handle cart tap
                      },
                    ),
                    TSettingsMenuTile(
                      icon: Iconsax.bag_tick,
                      title: "My Orders",
                      subtitle: "View your order history",
                      onTap: () {
                        Get.to(() => const OrderScreeen());
                      },
                    ),
                    TSettingsMenuTile(
                      icon: Iconsax.bank,
                      title: "Bank Account",
                      subtitle: "Manage your bank accounts",
                      onTap: () {
                        // Handle bank account tap
                      },
                    ),
                    TSettingsMenuTile(
                      icon: Iconsax.discount_shape,
                      title: "My Coupons",
                      subtitle: "View and redeem your coupons",
                      onTap: () {
                        // Handle coupons tap
                      },
                    ),
                    TSettingsMenuTile(
                      icon: Iconsax.notification,
                      title: "Notifications",
                      subtitle: "Manage notification preferences",
                      onTap: () {
                        // Handle notifications tap
                      },
                    ),
                    TSettingsMenuTile(
                      icon: Iconsax.shield_tick,
                      title: "Account Privacy",
                      subtitle: "Control your privacy settings",
                      onTap: () {
                        // Handle privacy tap
                      },
                    ),
                    const SizedBox(height: TSizes.spaceBetweenSections),
                    const TSectionHeading(
                      title: "App Settings",
                      showActionsButton: false,
                    ),
                    const SizedBox(height: TSizes.spaceBetweenItems),
                    TSettingsMenuTile(
                      icon: Iconsax.data,
                      title: "Load Data",
                      subtitle: "Manage app data and cache",
                      onTap: () {
                        // Handle load data tap
                      },
                    ),
                    TSettingsMenuTile(
                      icon: Iconsax.location,
                      title: "Geolocation",
                      subtitle: "Enable or disable location services",
                      trailing: Switch(
                        value: true,
                        onChanged: (value) {
                          // Handle geolocation switch
                        },
                      ),
                    ),
                    TSettingsMenuTile(
                      icon: Iconsax.shield_search,
                      title: "Search Safe Mode",
                      subtitle: "Filter explicit content in search",
                      trailing: Switch(
                        value: false,
                        onChanged: (value) {
                          // Handle geolocation switch
                        },
                      ),
                    ),
                    TSettingsMenuTile(
                      icon: Iconsax.image,
                      title: "HD Image Quality",
                      subtitle: "Toggle high-definition images",
                      trailing: Switch(
                        value: false,
                        onChanged: (value) {
                          // Handle geolocation switch
                        },
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBetweenSections),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {
                          // Handle logout
                        },
                        child: const Text("Logout"),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
