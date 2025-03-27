import 'package:flutter/material.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/theme/text_styles.dart';
import '../../../../../sub/product_details/product_details_screen/product_details_screen.dart';

class HomeRecommendedList extends StatelessWidget {
  const HomeRecommendedList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 174 / 142,
      ),
      itemCount: 4,
      // Number of items
      itemBuilder: (context, index) {
        return Container(
          width: 174,
          height: 142,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.cardBorder, width: 1),
            gradient: const LinearGradient(
              colors: [Color(0xFFFFFFFF), Color(0xFFF5F5F5)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0274, 0.9394],
              transform: GradientRotation(115.12 * 3.1416 / 180),
            ),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductDetailsScreen(),
                ),
              );
            },
            child: Stack(
              children: [
                // Image Section
                Positioned(
                  top: 4,
                  left: 4,
                  child: Container(
                    width: 166,
                    height: 102,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/188/240'),
                        // Add your assets
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                // Duration Badge
                Positioned(
                  bottom: 30, // Half overlapping
                  right: 12,
                  child: Container(
                    width: 41,
                    height: 16,
                    decoration: BoxDecoration(
                      color: AppColors.packageDurationBg,
                      borderRadius: BorderRadius.circular(9),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      '4N/5D',
                      style: TextStyles.packageDurationStyle,
                    ),
                  ),
                ),

                // Title Section
                Positioned(
                  bottom: 12,
                  left: 12,
                  right: 12,
                  child: Text(
                    'Explore Aspen',
                    style: TextStyles.cardTitleStyle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
