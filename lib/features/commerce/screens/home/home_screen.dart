import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/components/appbar/appbar.dart';
import 'package:greenway_commerce/common/components/shared/cart_counter_icon.dart';

import 'package:greenway_commerce/common/containers/primary_header_container.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/texts_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          TTexts.homeAppBarTitle,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .apply(color: TColors.grey),
                        ),
                        Text(
                          TTexts.homeAppBarSubtitle,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .apply(color: TColors.light),
                        )
                      ],
                    ),
                    actions: [
                      TCartCounterIcon(
                        iconColor: TColors.light,
                        onPressed: () {},
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
