import 'package:flutter/material.dart';

class TColors {
  TColors._();

  // app basic colors
  static const Color primary = Color(0xFF2D6E4F); // Deep forest green
  static const Color secondary = Color(0xFF8B7355); // Natural earth brown
  static const Color accent = Color(0xFF7CB342); // Fresh leaf green

  // gradient colors
  static const Gradient linearGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [
        Color(0xFF4CAF50), // Vibrant green
        Color(0xFF81C784), // Light green
        Color(0xFFA5D6A7), // Soft mint green
      ]);

  // text colors
  static const Color textPrimary = Color(0xFF2C3E2E); // Dark forest text
  static const Color textSecondary = Color(0xFF6B7C6A); // Muted sage
  static const Color textwhite = Colors.white;

  // background colors
  static const Color light = Color(0xFFF1F8F4); // Subtle mint background
  static const Color dark = Color(0xFF041511); // Deep forest night 0xFF1B2D1F
  static const Color primaryBackground = Color(0xFFE8F5E9); // Light eco green

  // background container colors
  static const Color lightContainer = Color(0xFFF9FBF9); // Off-white natural
  static Color darkContainer = Colors.white.withOpacity(0.1);

  // button colors
  static const Color buttonPrimary = Color(0xFF388E3C); // Strong eco green
  static const Color buttonSecondary = Color(0xFF78909C); // Recycled steel grey
  static const Color buttonDisabled = Color(0xFFBDBDBD); // Neutral grey

  // border colors
  static const Color borderPrimary = Color(0xFFC8E6C9); // Soft green border
  static const Color borderSecondary =
      Color(0xFFDCEDC8); // Lighter green border

  // Error & Validation Colors
  static const Color error = Color(0xFFD32F2F); // Natural red
  static const Color warning = Color(0xFFF57C00); // Warm amber
  static const Color success = Color(0xFF388E3C); // Eco green (consistent)
  static const Color info = Color(0xFF0288D1); // Water blue

  // Neutral Colors
  static const Color black = Color(0xFF1C1C1C);
  static const Color white = Color(0xFFFFFFFF);
  static const Color darkerGrey = Color(0xFF4A4A4A);
  static const Color darkGrey = Color(0xFF757575);
  static const Color grey = Color(0xFFBDBDBD);
}
