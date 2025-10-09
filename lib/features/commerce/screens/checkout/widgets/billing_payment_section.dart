import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/components/texts_components/section_heading.dart';
import 'package:greenway_commerce/common/containers/Rounded_container.dart';
import 'package:greenway_commerce/common/containers/show_svg.dart';
import 'package:greenway_commerce/utils/constants/colors.dart' show TColors;
import 'package:greenway_commerce/utils/constants/image_strings.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';

class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TSectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        const SizedBox(
          height: TSizes.spaceBetweenItems / 2,
        ),
        Row(
          children: [
            TRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? TColors.light : TColors.white,
              padding: const EdgeInsets.all(TSizes.paddingSM),
              child: const TSvgIcon(
                path: TIamges.aliPay,
                width: 90,
                height: 50,
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBetweenItems / 2,
            ),
            Text(
              'Alipay',
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ],
        )
      ],
    );
  }
}
