import 'package:flutter/material.dart';

class TTextTheme {
  TTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32.0,
      fontWeight: FontWeight.w800,
      color: const Color(0xFF1A1A1A),
      letterSpacing: -0.5,
      height: 1.2,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      color: const Color(0xFF2D2D2D),
      letterSpacing: -0.3,
      height: 1.3,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: const Color(0xFF363636),
      letterSpacing: -0.2,
      height: 1.4,
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w700,
      color: const Color(0xFF1A1A1A),
      letterSpacing: 0.1,
      height: 1.4,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: const Color(0xFF2D2D2D),
      letterSpacing: 0.15,
      height: 1.4,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: const Color(0xFF404040),
      letterSpacing: 0.1,
      height: 1.5,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: const Color(0xFF4A4A4A),
      letterSpacing: 0.25,
      height: 1.6,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: const Color(0xFF5C5C5C),
      letterSpacing: 0.2,
      height: 1.5,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: const Color(0xFF707070),
      letterSpacing: 0.15,
      height: 1.5,
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.w600,
      color: const Color(0xFF595959),
      letterSpacing: 0.5,
      height: 1.3,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: const Color(0xFF6B6B6B),
      letterSpacing: 0.4,
      height: 1.3,
    ),
  );

  ///------------ CUSTOMIZABLE DARK TEXT THEME -------------- ///

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32.0,
      fontWeight: FontWeight.w800,
      color: const Color(0xFFF5F5F5),
      letterSpacing: -0.5,
      height: 1.2,
      shadows: [
        Shadow(
          color: Colors.black.withOpacity(0.3),
          offset: const Offset(0, 2),
          blurRadius: 4,
        ),
      ],
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      color: const Color(0xFFEEEEEE),
      letterSpacing: -0.3,
      height: 1.3,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: const Color(0xFFE5E5E5),
      letterSpacing: -0.2,
      height: 1.4,
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w700,
      color: const Color(0xFFF0F0F0),
      letterSpacing: 0.1,
      height: 1.4,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: const Color(0xFFE8E8E8),
      letterSpacing: 0.15,
      height: 1.4,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: const Color(0xFFDDDDDD),
      letterSpacing: 0.1,
      height: 1.5,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: const Color(0xFFD4D4D4),
      letterSpacing: 0.25,
      height: 1.6,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: const Color(0xFFC4C4C4),
      letterSpacing: 0.2,
      height: 1.5,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: const Color(0xFFB0B0B0),
      letterSpacing: 0.15,
      height: 1.5,
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.w600,
      color: const Color(0xFFBBBBBB),
      letterSpacing: 0.5,
      height: 1.3,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: const Color(0xFFA8A8A8),
      letterSpacing: 0.4,
      height: 1.3,
    ),
  );
}
