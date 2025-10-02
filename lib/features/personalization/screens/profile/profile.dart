import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/components/appbar/appbar.dart';
import 'package:greenway_commerce/common/components/custom_shapes/tcircular_image.dart';
import 'package:greenway_commerce/common/components/texts_components/section_heading.dart';
import 'package:greenway_commerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/image_strings.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: const TAppBar(
        title: Text("My Profile"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Picture Section with modern card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(TSizes.paddingMD),
              decoration: BoxDecoration(
                color: isDark ? TColors.dark : TColors.light,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color:
                      isDark ? TColors.darkGrey : TColors.grey.withOpacity(0.3),
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      const TCircularImage(
                        image: TIamges.darkAppLogo,
                        width: 90,
                        height: 90,
                        padding: 0,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            color: TColors.primary,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: isDark ? TColors.dark : TColors.white,
                              width: 3,
                            ),
                          ),
                          child: const Icon(
                            Iconsax.camera,
                            size: 16,
                            color: TColors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: TSizes.paddingSM),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: TColors.primary,
                    ),
                    child: const Text(
                      "Change Profile Picture",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: TSizes.spaceBetweenSections),

            // Basic Information Section
            const TSectionHeading(
              title: 'Basic Information',
              showActionsButton: false,
            ),
            const SizedBox(height: TSizes.spaceBetweenItems),

            TProfileMenu(
              title: 'Full Name',
              subTitle: 'Coding with Dre',
              onPressed: () {},
              icon: Iconsax.user_edit,
            ),
            TProfileMenu(
              title: 'Username',
              subTitle: '@dre_coder',
              onPressed: () {},
              icon: Iconsax.user_tag,
            ),
            TProfileMenu(
              title: 'Email Address',
              subTitle: 'dre@example.com',
              onPressed: () {},
              icon: Iconsax.direct,
            ),
            TProfileMenu(
              title: 'Phone Number',
              subTitle: '+1 234 567 890',
              onPressed: () {},
              icon: Iconsax.call,
            ),

            const SizedBox(height: TSizes.spaceBetweenSections),

            // Personal Details Section
            const TSectionHeading(
              title: 'Personal Details',
              showActionsButton: false,
            ),
            const SizedBox(height: TSizes.spaceBetweenItems),

            TProfileMenu(
              title: 'Date of Birth',
              subTitle: 'January 15, 1995',
              onPressed: () {},
              icon: Iconsax.calendar_1,
            ),
            TProfileMenu(
              title: 'Gender',
              subTitle: 'Male',
              onPressed: () {},
              icon: Iconsax.user,
            ),
            TProfileMenu(
              title: 'Nationality',
              subTitle: 'United States',
              onPressed: () {},
              icon: Iconsax.global,
            ),
            TProfileMenu(
              title: 'Language',
              subTitle: 'English',
              onPressed: () {},
              icon: Iconsax.language_square,
            ),

            const SizedBox(height: TSizes.spaceBetweenSections),

            // Address Information Section
            const TSectionHeading(
              title: 'Address Information',
              showActionsButton: false,
            ),
            const SizedBox(height: TSizes.spaceBetweenItems),

            TProfileMenu(
              title: 'Street Address',
              subTitle: '123 Main Street, Apt 4B',
              onPressed: () {},
              icon: Iconsax.location,
            ),
            TProfileMenu(
              title: 'City',
              subTitle: 'New York',
              onPressed: () {},
              icon: Iconsax.building,
            ),
            TProfileMenu(
              title: 'State / Province',
              subTitle: 'New York',
              onPressed: () {},
              icon: Iconsax.map,
            ),
            TProfileMenu(
              title: 'Postal Code',
              subTitle: '10001',
              onPressed: () {},
              icon: Iconsax.code,
            ),
            TProfileMenu(
              title: 'Country',
              subTitle: 'United States',
              onPressed: () {},
              icon: Iconsax.flag,
            ),

            const SizedBox(height: TSizes.spaceBetweenSections),

            // Account Information Section
            const TSectionHeading(
              title: 'Account Information',
              showActionsButton: false,
            ),
            const SizedBox(height: TSizes.spaceBetweenItems),

            TProfileMenu(
              title: 'User ID',
              subTitle: '0940239',
              onPressed: () {},
              icon: Iconsax.copy,
            ),
            TProfileMenu(
              title: 'Member Since',
              subTitle: 'March 2024',
              onPressed: () {},
              icon: Iconsax.calendar_2,
            ),
            TProfileMenu(
              title: 'Account Status',
              subTitle: 'Active',
              onPressed: () {},
              icon: Iconsax.shield_tick,
            ),

            const SizedBox(height: TSizes.spaceBetweenSections),

            // Privacy & Security Section
            const TSectionHeading(
              title: 'Privacy & Security',
              showActionsButton: false,
            ),
            const SizedBox(height: TSizes.spaceBetweenItems),

            TProfileMenu(
              title: 'Change Password',
              subTitle: 'Update your password',
              onPressed: () {},
              icon: Iconsax.lock_1,
            ),
            TProfileMenu(
              title: 'Two-Factor Authentication',
              subTitle: 'Not enabled',
              onPressed: () {},
              icon: Iconsax.security,
            ),
            TProfileMenu(
              title: 'Privacy Settings',
              subTitle: 'Manage your privacy',
              onPressed: () {},
              icon: Iconsax.eye_slash,
            ),

            const SizedBox(height: TSizes.spaceBetweenSections),

            // Danger Zone
            Container(
              padding: const EdgeInsets.all(TSizes.paddingMD),
              decoration: BoxDecoration(
                color: TColors.error.withOpacity(0.1),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: TColors.error.withOpacity(0.3),
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Iconsax.warning_2,
                        color: TColors.error,
                        size: 20,
                      ),
                      const SizedBox(width: TSizes.paddingXS),
                      Text(
                        'Danger Zone',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: TColors.error,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                    ],
                  ),
                  const SizedBox(height: TSizes.marginSM),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Iconsax.logout_1),
                      label: const Text('Logout'),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: TColors.error,
                        side:
                            const BorderSide(color: TColors.error, width: 1.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 12),
                      ),
                    ),
                  ),
                  const SizedBox(height: TSizes.marginXS),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Iconsax.trash),
                      label: const Text('Delete Account'),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: TColors.error,
                        side:
                            const BorderSide(color: TColors.error, width: 1.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: TSizes.spaceBetweenSections),
          ],
        ),
      ),
    );
  }
}
