import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greenway_commerce/common/components/shared/animation_loader.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';

class TFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      barrierDismissible: false,
      context: Get.context!,
      builder: (_)  => PopScope( canPop: true, child: Container(
        color: THelperFunctions.isDarkMode(Get.context!) ? TColors.dark : TColors.white,
        width: double.infinity, 
        height: double.infinity,
        child:  Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            const SizedBox(height: 250),
            TAnimationLoaderWidget(text:  text, animation: animation),
          ]

      ))
    ));
  }
}