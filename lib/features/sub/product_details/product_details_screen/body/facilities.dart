import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/text_styles.dart';

class ProductDetailsFacilities extends StatelessWidget {
  const ProductDetailsFacilities({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 32),
        Text('Facilities', style: TextStyles.facilitiesTitle),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildFacilityButton(Icons.thermostat, '1 Heater'),
            _buildFacilityButton(Icons.restaurant, 'Dinner'),
            _buildFacilityButton(Icons.bathtub, '1 Tub'),
            _buildFacilityButton(Icons.pool, 'Pool'),
          ],
        ),
        const SizedBox(height: 24),
      ],
    );
  }

  Widget _buildFacilityButton(IconData icon, String label) {
    return Container(
      width: 77,
      height: 74,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          colors: [
            AppColors.facilityGradientStart,
            AppColors.facilityGradientEnd
          ],
          transform: GradientRotation(270.77 * pi / 180),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: AppColors.iconBackground,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              size: 20,
              color: AppColors.iconText,
            ),
          ),
          const SizedBox(height: 8),
          Text(label, style: TextStyles.facilityLabel),
        ],
      ),
    );
  }
}
