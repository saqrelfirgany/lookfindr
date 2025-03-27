import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/text_styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _titleAnimation;
  late Animation<double> _descriptionAnimation;
  late Animation<double> _progressAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _titleAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.5, curve: Curves.easeInOut),
      ),
    );

    _descriptionAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.3, 0.8, curve: Curves.easeInOut),
      ),
    );

    _progressAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.linear,
      ),
    );

    _controller.forward();

    Future.delayed(const Duration(milliseconds: 2500), () {
      Navigator.pushReplacementNamed(context, '/intro');
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.blueGradient1,
              AppColors.blueGradient2,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _titleAnimation,
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(0, 50 * (1 - _titleAnimation.value)),
                  child: Text(
                    'lookfindr',
                    style: TextStyles.titleStyle.copyWith(
                      fontSize: 48,
                      fontWeight: FontWeight.w700,
                      color: AppColors.white,
                      letterSpacing: 4.0,
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            AnimatedBuilder(
              animation: _descriptionAnimation,
              builder: (context, child) {
                return Opacity(
                  opacity: _descriptionAnimation.value,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      'Discover Hidden Gems Around You',
                      textAlign: TextAlign.center,
                      style: TextStyles.subtitleStyle.copyWith(
                        fontSize: 18,
                        color: AppColors.white.withOpacity(0.9),
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: AnimatedBuilder(
                animation: _progressAnimation,
                builder: (context, child) {
                  return LinearProgressIndicator(
                    value: _progressAnimation.value,
                    backgroundColor: AppColors.white.withOpacity(0.2),
                    valueColor: AlwaysStoppedAnimation<Color>(AppColors.white),
                    minHeight: 4,
                    borderRadius: BorderRadius.circular(10),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}