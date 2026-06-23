import 'package:flutter/material.dart';
import 'package:quran_app/core/image_path_manager.dart';
import 'package:quran_app/core/numbers/height.dart';
import 'package:quran_app/core/numbers/width.dart';
import 'package:quran_app/feature/widgets/custom_splash_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: customSplashScreen(
        width: WidthValues.splashScreenLogo,
        height: HeightValues.splashScreenLogo,
        imagePath: ImagePathManager.musicIcon,
      ),
    );
  }
}
