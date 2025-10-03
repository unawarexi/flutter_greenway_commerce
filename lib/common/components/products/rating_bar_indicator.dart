import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class TRatingBarIndicator extends StatelessWidget {
  const TRatingBarIndicator({
    super.key, required this.rating,
  });

  final double rating;
  

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
        itemCount: 5,
        rating: rating,
        itemSize: 20,
        unratedColor: TColors.grey,
        itemBuilder: (_, __) => const Icon(Iconsax.star1, color: Colors.amber));
  }
}
