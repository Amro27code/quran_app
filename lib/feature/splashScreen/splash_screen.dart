import 'package:flutter/material.dart';
import 'package:quran_app/core/color_manager.dart';
import 'package:quran_app/core/image_path_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: .center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.20, -0.98),
            end: Alignment(-0.20, 0.98),
            colors: [ColorManager.primary, ColorManager.secondarySSC],
          ),
        ),
        width: .infinity,
        height: .infinity,
        child: Image(
          image: AssetImage(ImagePathManager.musicIcon),
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}
