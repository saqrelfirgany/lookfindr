import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lookfindr/core/theme/app_colors.dart';
import 'package:lookfindr/features/sub/product_details/product_details_screen/body/facilities.dart';

import '../../../../core/theme/text_styles.dart';
import 'body/header_card.dart';
import 'body/title_map_button.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductDetailsHeaderCard(),

                const SizedBox(height: 24),

                // Title and Map Button
                TitleMapButton(),

                ProductDetailsFacilities(),
                const SizedBox(height: 30),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Price', style: TextStyles.priceLabel),
                          const SizedBox(height: 4),
                          Text('\$199', style: TextStyles.priceAmount),
                        ],
                      ),
                      _buildBookNowButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBookNowButton() {
    return Container(
      width: 223,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
          colors: [AppColors.blueGradient1, AppColors.blueGradient2],
          transform: GradientRotation(270.77 * pi / 180),
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF0038FF).withOpacity(0.24),
            blurRadius: 19,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 16,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Book Now', style: TextStyles.bookNowText),
            const SizedBox(width: 10),
            const Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
