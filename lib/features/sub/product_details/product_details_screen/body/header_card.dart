import 'package:flutter/material.dart';

import '../../../../../core/theme/app_colors.dart';

class ProductDetailsHeaderCard extends StatelessWidget {
  const ProductDetailsHeaderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Main Image
        Container(
          width: double.infinity,
          height: 340,
          margin: const EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: NetworkImage('https://picsum.photos/335/386'),
              fit: BoxFit.cover,
            ),
          ),
        ),

        // Back Button
        PositionedDirectional(
          top: 32,
          start: 12,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),

        // Like Button
        Positioned(
          bottom: -22,
          right: 20,
          child: Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(
                Icons.favorite,
                color: AppColors.red1,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
