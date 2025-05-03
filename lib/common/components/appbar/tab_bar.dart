import 'package:flutter/material.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  const TTabBar({
    super.key,
    required this.tabs,
    this.onTap,
    this.selectedIndex = 0,
    this.backgroundColor,
    this.indicatorColor,
    this.indicatorWeight = 2.0,
  });

  final List<Tab> tabs;
  final int selectedIndex;
  final Color? backgroundColor;
  final Color? indicatorColor;
  final double indicatorWeight;
  final ValueChanged<int>? onTap;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      
      color: backgroundColor ?? (dark ? TColors.black : TColors.white),
      child: TabBar(
        tabs: tabs,
        onTap: onTap,
        isScrollable: true,
        indicatorColor: indicatorColor ?? Theme.of(context).primaryColor,
        indicatorWeight: indicatorWeight,
        labelColor: dark? TColors.white : TColors.primary,
        unselectedLabelColor: TColors.darkGrey,
      ),
    );
  }
}