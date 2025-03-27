import 'package:flutter/material.dart';
import 'package:lookfindr/features/main/home/home_screen/home_screen.dart';

import '../../../../core/theme/text_styles.dart';
import '../../../../core/widgets/buttons/main_button.dart';

class IntroExploreScreen extends StatelessWidget {
  const IntroExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            width: double.infinity,
            height: double.infinity,
            'assets/intro/intro_image.png',
            fit: BoxFit.fill,
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(
                  top: 94,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Aspen',
                      style: TextStyles.titleStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 32,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Plan your',
                      style: TextStyles.subtitleStyle,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 0),
                    Text(
                      'Luxurious\nVacation',
                      style: TextStyles.headingStyle,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 24),
                    MainButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                    ),
                    const SizedBox(height: 48),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
