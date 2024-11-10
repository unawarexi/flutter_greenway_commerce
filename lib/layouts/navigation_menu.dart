import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

/// This widget represents the Bottom Navigation Menu using GetX for state management.
class BottomNavigationMenu extends StatelessWidget {
  const BottomNavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the NavigationController using GetX. It handles the state of the selected tab.
    final controller = Get.put(NavigationController());

    return Scaffold(
      /*
      The Obx widget from GetX enables reactive state management.
      It listens to changes in the selectedIndex from the controller and updates the UI accordingly.
      The NavigationBar widget defines the bottom navigation bar and its behavior.
      */
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 0,
          selectedIndex: controller.selectedIndex
              .value, // Binds selectedIndex to update based on user interaction.
          elevation: 0,
          onDestinationSelected: (index) => controller.selectedIndex.value =
              index, // Updates the selected tab index when a tab is clicked.
          destinations: const [
            NavigationDestination(
              icon: Icon(Iconsax.home),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(Iconsax.shop),
              label: "Store",
            ),
            NavigationDestination(
              icon: Icon(Iconsax.heart),
              label: "Wishlist",
            ),
            NavigationDestination(
              icon: Icon(Iconsax.setting),
              label: "Settings",
            ),
          ],
        ),
      ),
      body: Container(),
    );
  }
}

/// NavigationController manages the selected tab index for the BottomNavigationMenu.
/// It uses GetX's reactive Rx type to allow dynamic updates of the navigation state.
class NavigationController extends GetxController {
  final Rx<int> selectedIndex =
      0.obs; // Reactive variable to store the selected tab index.

  final Screens =
      []; // Placeholder list for screen widgets corresponding to each tab.
}
