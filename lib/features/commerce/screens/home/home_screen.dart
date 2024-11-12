import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/containers/circular_container.dart';
import 'package:greenway_commerce/common/components/custom_clip_path.dart';
import 'package:greenway_commerce/common/containers/primary_header_container.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          TPrimaryHeaderContainer(
            child: Column(
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
