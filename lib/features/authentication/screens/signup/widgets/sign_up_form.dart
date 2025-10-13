import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greenway_commerce/features/authentication/controllers/auth/signup_controller.dart';
import 'package:greenway_commerce/features/authentication/screens/signup/widgets/terms_and_conditions.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';
import 'package:greenway_commerce/utils/constants/texts_strings.dart';
import 'package:greenway_commerce/utils/validators/form_validator.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());

    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          //-------------------- First and Last Name in a Row
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstNameController,
                  validator: TFormValidator.validateName,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: TTexts.firstNameLabel,
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(width: TSizes.spaceBetweenInputFields),
              Expanded(
                child: TextFormField(
                  controller: controller.lastNameController,
                  validator: TFormValidator.validateName,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: TTexts.lastNameLabel,
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBetweenInputFields),

          //--------------------- username field
          TextFormField(
            controller: controller.usernameController,
            validator: TFormValidator.validateUsername,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.verified_user_outlined),
              labelText: TTexts.userNameLabel,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: TSizes.spaceBetweenInputFields),

          TextFormField(
            controller: controller.emailController,
            validator: TFormValidator.validateEmail,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.email_outlined),
              labelText: TTexts.emailLabel,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: TSizes.spaceBetweenInputFields),

          //------------------- Phone field
          TextFormField(
            controller: controller.phoneController,
            validator: TFormValidator.validatePhone,
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.call),
              labelText: TTexts.phoneLabel,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: TSizes.spaceBetweenInputFields),

          //----------------- Password field with toggle visibility icon
          Obx(() => TextFormField(
                controller: controller.passwordController,
                validator: TFormValidator.validatePassword,
                obscureText: !controller.isPasswordVisible.value,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.password),
                  labelText: TTexts.passwordLabel,
                  labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                  suffixIcon: IconButton(
                    icon: Icon(
                      controller.isPasswordVisible.value
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                    ),
                    onPressed: controller.togglePasswordVisibility,
                  ),
                ),
              )),

          const SizedBox(height: TSizes.spaceBetweenSections),

          //======================= Terms and conditions
          Obx(() => TTermsAndConditions(
                dark: dark,
                value: controller.isTermsAccepted.value,
                onChanged: controller.toggleTermsAcceptance,
              )),

          const SizedBox(
            height: TSizes.spaceBetweenSections,
          ),

          Obx(() => SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed:
                      controller.isLoading.value ? null : controller.signUp,
                  child: controller.isLoading.value
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.white),
                          ),
                        )
                      : const Text(TTexts.signUpButton),
                ),
              ))
        ],
      ),
    );
  }
}
