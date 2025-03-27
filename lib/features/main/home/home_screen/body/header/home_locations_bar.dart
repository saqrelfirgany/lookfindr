import 'package:flutter/material.dart';

import '../../../../../../core/theme/text_styles.dart';
import 'home_drop_down.dart';

class HomeLocationsBar extends StatelessWidget {
  const HomeLocationsBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Top Row
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Explore',
              style: TextStyles.exploreTitle,
            ),
            // Location Title
            Text(
              'Aspen',
              style: TextStyles.locationTitle,
            ),
          ],
        ),
        const SizedBox(height: 0),
        HomeLocationsDropDown(),
      ],
    );
  }
}
