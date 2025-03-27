import 'package:flutter/material.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/theme/text_styles.dart';

class HomeSearchBar extends StatelessWidget {
   HomeSearchBar({
    super.key,
  }) ;
  final TextEditingController _searchController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 52,
      decoration: BoxDecoration(
        color: AppColors.searchBackground,
        borderRadius: BorderRadius.circular(24),
      ),
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Image.asset(
            'assets/search_icon.png',
          ),
          hintText: 'Find things to do',
          hintStyle: TextStyles.searchHintStyle,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
        ),
      ),
    );
  }
}
