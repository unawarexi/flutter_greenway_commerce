import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/components/custom_shapes/curved_edges.dart';

class TCustomClipPath extends StatelessWidget {
  const TCustomClipPath({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: TCustomCurvedEdges(), child: child);
  }
}
