import 'package:flutter/cupertino.dart';
import 'package:quran_app/core/numbers/alignmet_manager.dart';
import 'package:quran_app/core/other/color_manager.dart';

Container customSplashScreen({
  required double height,
  required double width,
  required String imagePath,
}) {
  return Container(
    alignment: .center,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment(
          AlignmentXManager.beginBackgroundSplash,
          AlignmentYManager.beginBackgroundSplash,
        ),
        end: Alignment(
          AlignmentXManager.endBackgroundSplash,
          AlignmentYManager.endBackgroundSplash,
        ),
        colors: [ColorManager.primary, ColorManager.secondarySSC],
      ),
    ),
    width: .infinity,
    height: .infinity,
    child: Image(image: AssetImage(imagePath), width: width, height: height),
  );
}
