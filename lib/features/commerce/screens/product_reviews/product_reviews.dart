import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/components/appbar/appbar.dart';
import 'package:greenway_commerce/common/components/products/rating_bar_indicator.dart';
import 'package:greenway_commerce/features/commerce/screens/product_reviews/widgets/overall_product_rating.dart';
import 'package:greenway_commerce/features/commerce/screens/product_reviews/widgets/user_review_card.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatefulWidget {
  const ProductReviewsScreen({super.key});

  @override
  State<ProductReviewsScreen> createState() => _ProductReviewsScreenState();
}

class _ProductReviewsScreenState extends State<ProductReviewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text("Reviews and Ratings"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "ratings and revies are verified sources and given by customers based on individual preferences"),
              const SizedBox(height: TSizes.spaceBetweenItems),
              const TOverallProductRating(),
              const TRatingBarIndicator(
                rating: 4.5,
              ),
              Text(
                "12,611",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: TColors.darkGrey),
              ),
              const SizedBox(
                height: TSizes.spaceBetweenItems * 4,
              ),
              const UserReviewCard(),
              const SizedBox(height: TSizes.spaceBetweenItems),
              const UserReviewCard(),
              const SizedBox(height: TSizes.spaceBetweenItems),
              const UserReviewCard(),
              const SizedBox(height: TSizes.spaceBetweenItems),
              const UserReviewCard(),
              const SizedBox(height: TSizes.spaceBetweenItems),
              const UserReviewCard(),
              const SizedBox(height: TSizes.spaceBetweenItems),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
