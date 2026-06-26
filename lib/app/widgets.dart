import 'package:flutter/material.dart';
import 'package:quran_app/core/numbers/alignmet_manager.dart';
import 'package:quran_app/core/other/color_manager.dart';

Container backgroundGradiant({
  required Widget? child,
  List<Color> colors = const [
    ColorManager.primary,
    ColorManager.backgroundSecondaryHome,
  ],
  AlignmentGeometry beginAlignment = const Alignment(
    AlignmentXManager.beginBackgroundSplash,
    AlignmentYManager.beginBackgroundSplash,
  ),
  AlignmentGeometry endAlignment = const Alignment(
    AlignmentXManager.endBackgroundSplash,
    AlignmentYManager.endBackgroundSplash,
  ),
}) {
  return Container(
    width: .infinity,
    height: .infinity,
    alignment: .center,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: beginAlignment,
        end: endAlignment,
        colors: colors,
      ),
    ),
    child: child,
  );
}
