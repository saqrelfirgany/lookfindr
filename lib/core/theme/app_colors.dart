import 'dart:math';

import 'package:flutter/material.dart';

class AppColors {
  static const navSelected = Color(0xFF196EEE);
  static const navUnselected = Color(0xFFB8B8B8);
  static const navBackgroundStart = Color(0xFFFEFEFE);
  static const navBackgroundEnd = Color(0xFFF5F5F5);

  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);

  static const blueGradient1 = Color(0xFF176FF2);
  static const blueGradient2 = Color(0xFF196EEE);
  static const primaryText = Color(0xFF333333);

  static const searchBackground = Color(0xFFF3F8FE);
  static const iconBackground = Color(0xFFF3F8FE);
  static const iconText = Color(0xFFFB8B8B8);
  static const gray1 = Color(0xFF4D5652);
  static const red1 = Color(0xFFEC5655);
  static const yellow1 = Color(0xFFF8D675);

  static const packageDurationBg = Color(0xFF3A544F);
  static const cardBorder = Color(0xFFF4F4F4);
}

class Gradients {
  static LinearGradient navBarGradient = LinearGradient(
    colors: [AppColors.navBackgroundStart, AppColors.navBackgroundEnd],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0.0035, 1.7532],
    transform: GradientRotation(270.4 * pi / 180),
  );
}
