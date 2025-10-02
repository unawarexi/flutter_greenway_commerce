import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/components/custom_shapes/curved_edges.dart';

class TCurvedEdgesWidget extends StatelessWidget {
  const TCurvedEdgesWidget({super.key,
    required this.child,
  });

  final Widget child; 

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedEdges(),
      child: child
    );
  }
}