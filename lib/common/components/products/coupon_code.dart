import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/containers/Rounded_container.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart' show THelperFunctions;

class TCouponCode extends StatelessWidget {
  const TCouponCode({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
     final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? TColors.dark : TColors.white,
      padding: const EdgeInsets.only(
          top: TSizes.paddingSM,
          bottom: TSizes.paddingSM,
          right: TSizes.paddingSM,
          left: TSizes.paddingMD),
      child: Row(
        children: [
          Flexible(
            // ----------------- Text Field
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: 'Have Promo Code? Enter Here',
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none),
            ),
          ),
    
          // ------------------ Button
          SizedBox(
              width: 80,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      foregroundColor: dark
                          ? TColors.white.withOpacity(0.5)
                          : TColors.dark.withOpacity(0.5),
                      backgroundColor: TColors.grey.withOpacity(0.2),
                      side: BorderSide(
                          color: Colors.grey.withOpacity(0.1))),
                  child: Text(
                    'Apply',
                    style: TextStyle(
                        color: dark ? TColors.white : TColors.dark),
                  )))
        ],
      ),
    );
  }
}
