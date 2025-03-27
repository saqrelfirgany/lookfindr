import 'package:flutter/material.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/theme/text_styles.dart';

class HomeFiltersBar extends StatefulWidget {
  const HomeFiltersBar({super.key});

  @override
  State<HomeFiltersBar> createState() => _HomeFiltersBarState();
}

class _HomeFiltersBarState extends State<HomeFiltersBar> {
  final List<String> _filters = [
    "Location",
    "Hotels",
    "Food",
    "Adventure",
    "Activities"
  ];

  String _selectedFilter = "Location";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 41,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _filters.length,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final filter = _filters[index];
          return GestureDetector(
            onTap: () => setState(() => _selectedFilter = filter),
            child: Container(
              width: 89,
              decoration: BoxDecoration(
                color: _selectedFilter == filter
                    ? AppColors.blueGradient1.withOpacity(.1)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(33),
              ),
              alignment: Alignment.center,
              child: Text(
                filter,
                style: TextStyles.chipTextStyle.copyWith(
                  color: _selectedFilter == filter
                      ? AppColors.blueGradient2
                      : AppColors.iconText,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
