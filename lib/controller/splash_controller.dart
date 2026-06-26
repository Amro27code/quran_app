import 'package:flutter/material.dart';
import 'package:quran_app/core/numbers/time_manager.dart' show SecondValues;
import 'package:quran_app/core/other/route_manager.dart';

class SplashController {
  static void timer({required BuildContext context, required int time}) async {
    await Future.delayed(
      const Duration(seconds: SecondValues.timeSplashScreen),
      () =>
          Navigator.pushReplacementNamed(context, RouteNames.onBoardingScreen),
    );
  }
}
