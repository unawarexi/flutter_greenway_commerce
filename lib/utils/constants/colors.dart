import 'package:flutter/material.dart';

class TColors {
  TColors._();

  // app basic colors
  static const Color primary = Color(0xFF4b68ff);
  static const Color secondary = Color(0xFFFFFE24B);
  static const Color accent = Color(0xFF68C6F8);

  // gradient colors
  static const Gradient linearGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [
        Color(0xffff9a9e),
        Color(0xfffad0c4),
        Color(0xfffad0c4),
      ]);

  // text colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFFFFFE24B);
  static const Color textwhite = Colors.white;

  // background colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  // backgriund container colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = Colors.white.withOpacity(0.1);

  // button colors
  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonSecondary = Color(0xFF6C7570);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  // border colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  // Error & Validation Colors
  static const Color error = Color(0xFFFF4D4F);
  static const Color warning = Color(0xFFFFC53D);
  static const Color success = Color(0xFF52C41A);
  static const Color info = Color(0xFF1890FF);

  // Neutral Colors
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF595959);
  static const Color darkGrey = Color(0xFF8C8C8C);
  static const Color grey = Color(0xFFD9D9D9);
}
