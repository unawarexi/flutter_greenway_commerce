// lib/common/widgets/t_svg_icon.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TSvgIcon extends StatelessWidget {
  const TSvgIcon({
    super.key,
    required this.path,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.color,
    this.semanticLabel,
  });

  final String path;
  final double? width;
  final double? height;
  final BoxFit fit;
  final Color? color;
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      width: width,
      height: height,
      fit: fit,
      // colorFilter:
      //     color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
      semanticsLabel: semanticLabel,
    );
  }
}
