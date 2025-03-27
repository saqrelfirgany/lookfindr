import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

class MainNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const MainNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 72,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        // gradient: Gradients.navBarGradient,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF186FF2).withOpacity(0.05),
            offset: const Offset(15, -19),
            blurRadius: 22,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(Icons.home_filled, 0),
          _buildNavItem(Icons.explore_outlined, 1),
          _buildNavItem(Icons.favorite_border, 2),
          _buildNavItem(Icons.person_outline, 3),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    return IconButton(
      icon: Icon(
        icon,
        size: 24,
        color: currentIndex == index
            ? AppColors.navSelected
            : AppColors.navUnselected,
      ),
      onPressed: () => onTap(index),
    );
  }
}
