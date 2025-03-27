import 'package:flutter/material.dart';
import 'package:lookfindr/features/main/bottom_nav_bar/main_bottom_nav_bar.dart';
import 'package:lookfindr/features/main/home/home_screen/body/popular_list/popular_list.dart';
import 'package:lookfindr/features/main/home/home_screen/body/recommended_list/recommended_list.dart';
import 'package:lookfindr/features/main/home/home_screen/body/search_filters/home_filters_bar.dart';

import '../../../../core/theme/text_styles.dart';
import 'body/header/home_locations_bar.dart';
import 'body/popular_list/view_more.dart';
import 'body/search_filters/home_search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 44),
                HomeLocationsBar(),
                const SizedBox(height: 24),
                // From top: 124px - previous sections

                // Search Field
                HomeSearchBar(),
                const SizedBox(height: 32),

                // Filter Chips
                HomeFiltersBar(),
                const SizedBox(height: 32),

                // Attractions Section
                ViewMoreTitle(),

                HomePopularList(),
                const SizedBox(height: 32),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended',
                      style: TextStyles.sectionTitleStyle,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                HomeRecommendedList(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: MainNavBar(
        currentIndex: 0,
        onTap: (p0) {},
      ),
    );
  }
}
