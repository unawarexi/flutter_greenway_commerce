import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/styles/spacing_styles.dart';
import 'package:greenway_commerce/features/authentication/screens/login/widgets/login_fom.dart';
import 'package:greenway_commerce/common/components/form_divider.dart';
import 'package:greenway_commerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:greenway_commerce/common/components/social_buttons.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/constants/texts_strings.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: TSpacingStyle.paddingWithAppBarHeight,
            child: Column(
              children: [
                LoginHeader(dark: dark),
                // Form Fields
                const TLoginFom(),

                // Divider (or additional content)
                TFormDivider(dividerText: TTexts.dividerTitle, dark: dark),

                const SizedBox(
                  height: TSizes.spaceBetweenSections,
                ),

                TSocialButtons(dark: dark)
              ],
            )),
      ),
    );
  }
}
