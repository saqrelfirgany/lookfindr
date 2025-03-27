import 'package:flutter/material.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/theme/text_styles.dart';

class ViewMoreTitle extends StatelessWidget {
  const ViewMoreTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Popular',
          style: TextStyles.sectionTitleStyle,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'See all',
            style: TextStyles.locationDropdown.copyWith(
              color: AppColors.blueGradient1,
            ),
          ),
        ),
      ],
    );
  }
}
