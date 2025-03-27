import 'package:flutter/material.dart';

import '../../../../../core/theme/text_styles.dart';
import '../../../../../core/widgets/text/expandable_text.dart';

class TitleMapButton extends StatelessWidget {
  const TitleMapButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 193,
              child: Text('Coeurdes Alpes', style: TextStyles.productTitle),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Show map', style: TextStyles.mapButtonText),
            ),
          ],
        ),

        const SizedBox(height: 8),

        // Rating
        Row(
          children: [
            const Icon(Icons.star, color: Colors.amber, size: 16),
            const SizedBox(width: 4),
            Text('4.5 (355 Reviews)', style: TextStyles.ratingText),
          ],
        ),

        const SizedBox(height: 16),

        // Description
        SizedBox(
          width: 335,
          child: ExpandableText(
            text:
                'Aspen is as close as one can get to a storybook alpine town in America. '
                'The choose-your-own-adventure possibilities—skiing, hiking, dining shopping '
                'and .... Aspen is as close as one can get to a storybook alpine town in America. '
                'The choose-your-own-adventure possibilities—skiing, hiking, dining shopping '
                'and .... Aspen is as close as one can get to a storybook alpine town in America. '
                'The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ....',
          ),
        ),
      ],
    );
  }
}
