import 'package:flutter/material.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/theme/text_styles.dart';
import '../../../../../sub/product_details/product_details_screen/product_details_screen.dart';

class HomePopularListCard extends StatelessWidget {
  const HomePopularListCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
          Container(
            width: 188,
            height: 240,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              image: DecorationImage(
                image: NetworkImage('https://picsum.photos/188/240'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          PositionedDirectional(
            bottom: 42,
            start: 12,
            child: Container(
              width: 90,
              height: 23,
              decoration: BoxDecoration(
                color: AppColors.gray1,
                borderRadius: BorderRadius.circular(59),
              ),
              alignment: Alignment.center,
              child: Text(
                'Alley Palace',
                style: TextStyles.chipTextStyle.copyWith(fontSize: 12),
              ),
            ),
          ),
          PositionedDirectional(
            bottom: 12,
            start: 12,
            child: Container(
              width: 52,
              height: 24,
              decoration: BoxDecoration(
                color: AppColors.gray1,
                borderRadius: BorderRadius.circular(59),
              ),
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: Row(
                children: [
                  Image.asset(
                    'assets/rate_icon.png',
                    color: AppColors.yellow1,
                    width: 16,
                    height: 16,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '4.8',
                    style: TextStyles.chipTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
          PositionedDirectional(
            bottom: 16,
            end: 16,
            child: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: AppColors.iconBackground,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.favorite,
                size: 16,
                color: AppColors.red1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
