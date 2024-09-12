import "package:flutter/material.dart";
import "package:greenway_commerce/utils/theme/custom_themes/app_bar_theme.dart";
import "package:greenway_commerce/utils/theme/custom_themes/bottom_sheet_theme.dart";
import "package:greenway_commerce/utils/theme/custom_themes/check_box_theme.dart";
import "package:greenway_commerce/utils/theme/custom_themes/chip_theme.dart";
import 'package:greenway_commerce/utils/theme/custom_themes/elevated_button_theme.dart';
import "package:greenway_commerce/utils/theme/custom_themes/outlined_button_theme.dart";
import "package:greenway_commerce/utils/theme/custom_themes/text_field_theme.dart";
import "package:greenway_commerce/utils/theme/custom_themes/text_theme.dart";

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: "Poppins",
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TTextTheme.lightTextTheme,
      chipTheme: TChipTheme.lightChipTheme,
      appBarTheme: TAppBarTheme.lightAppBarTheme,
      checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
      bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
      outlinedButtonTheme: TOutlineButtonTheme.lightOutlinedButtonTheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme);

  // ---------- GENERAL DARK APLLICATION THEME ------------------ //
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: "Poppins",
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TTextTheme.darkTextTheme,
      chipTheme: TChipTheme.darkChipTheme,
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
      outlinedButtonTheme: TOutlineButtonTheme.darkOutlinedButtonTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme);
}
