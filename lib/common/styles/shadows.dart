import 'package:flutter/material.dart';

class TShadowStyle {
  static final BoxShadow verticalShadow = BoxShadow(
    color: Colors.black.withOpacity(0.15),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 4),
  );

  static final BoxShadow horizontalShadow = BoxShadow(
    color: Colors.black.withOpacity(0.10),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(4, 0),
  );

  static final BoxShadow softShadow = BoxShadow(
    color: Colors.grey.withOpacity(0.05),
    blurRadius: 5,
    spreadRadius: 0.5,
    offset: const Offset(2, 2),
  );
}
