import 'package:flutter/material.dart';

import 'app_colors.dart';

class TextStyles {
  static TextStyle get titleStyle => const TextStyle(
        fontFamily: 'Hiatus',
        fontWeight: FontWeight.w400,
        fontSize: 116,
        height: 1.0,
        letterSpacing: 0.085,
        color: AppColors.white,
      );

  static TextStyle get subtitleStyle => const TextStyle(
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400,
        fontSize: 24,
        color: AppColors.white,
      );

  static TextStyle get headingStyle => const TextStyle(
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
        fontSize: 40,
        color: AppColors.white,
      );

  static TextStyle get title16w700CircularXXWhite => const TextStyle(
        fontFamily: 'CircularXX', // Not added
        fontWeight: FontWeight.w700,
        fontSize: 16,
        color: AppColors.white,
      );

  static TextStyle get exploreTitle => const TextStyle(
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: AppColors.black,
      );

  static TextStyle get locationDropdown => const TextStyle(
        fontFamily: 'CircularXX',
        // Not added
        fontWeight: FontWeight.w400,
        fontSize: 12,
        color: AppColors.primaryText,
      );

  static TextStyle get locationTitle => const TextStyle(
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
        fontSize: 32,
        color: AppColors.black,
      );

  static TextStyle get searchHintStyle => const TextStyle(
    fontFamily: 'CircularXX',
    fontWeight: FontWeight.w500,
    fontSize: 13,
    color: Color(0xFFB8B8B8),
  );

  static TextStyle get chipTextStyle => const TextStyle(
    fontFamily: 'CircularXX',
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: Colors.white,
  );

  static TextStyle get sectionTitleStyle => const TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: AppColors.primaryText,
  );

  static TextStyle get packageDurationStyle => const TextStyle(
    fontFamily: 'CircularXX',
    fontWeight: FontWeight.w500,
    fontSize: 10,
    color: Colors.white,
  );

  static TextStyle get cardTitleStyle => const TextStyle(
    fontFamily: 'CircularXX',
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: Color(0xFF232323),
  );

  static TextStyle get productTitle => const TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    fontSize: 24,
    color: Color(0xFF232323),
  );

  static TextStyle get mapButtonText => const TextStyle(
    fontFamily: 'CircularXX',
    fontWeight: FontWeight.w700,
    fontSize: 14,
    color: AppColors.blueGradient1,
  );

  static TextStyle get ratingText => const TextStyle(
    fontFamily: 'CircularXX',
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: Color(0xFF606060),
  );

  static TextStyle get descriptionText => const TextStyle(
    fontFamily: 'CircularXX',
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: Color(0xFF3A544F),
    height: 1.5,
  );

  static TextStyle get readMoreText => const TextStyle(
    fontFamily: 'CircularXX',
    fontWeight: FontWeight.w700,
    fontSize: 14,
    color: AppColors.blueGradient1,
  );

  static TextStyle get facilitiesTitle => const TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: Color(0xFF232323),
  );

  static TextStyle get facilityLabel => const TextStyle(
    fontFamily: 'CircularXX',
    fontWeight: FontWeight.w500,
    fontSize: 10,
    color: Color(0xFFB8B8B8),
  );

  static TextStyle get priceLabel => const TextStyle(
    fontFamily: 'CircularXX',
    fontWeight: FontWeight.w500,
    fontSize: 12,
    color: Color(0xFF232323),
  );

  static TextStyle get priceAmount => const TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
    fontSize: 24,
    color: Color(0xFF2DD7A4),
  );

  static TextStyle get bookNowText => const TextStyle(
    fontFamily: 'CircularXX',
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: Colors.white,
  );

}
