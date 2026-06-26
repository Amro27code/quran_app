import 'package:flutter/material.dart';
import 'package:quran_app/feature/home/screen/bnb.dart';
import 'package:quran_app/feature/home/screen/home_screen.dart';
import 'package:quran_app/feature/onBoardingScreen/screens/onb_screen.dart';
import 'package:quran_app/feature/play/screens/play_screen.dart';
import 'package:quran_app/feature/splashScreen/screens/splash_screen.dart';

class RouteManager {
  static Map<String, WidgetBuilder> routes = {
    RouteNames.splashScreen: (context) => const SplashScreen(),
    RouteNames.onBoardingScreen: (context) => const OnbScreen(),
    RouteNames.homeScreen: (context) => const HomeScreen(),
    RouteNames.bnb: (context) => const Bnb(),
    RouteNames.play: (context) => const PlayScreen(),
  };
}

class RouteNames {
  static const String splashScreen = "ssc";
  static const String onBoardingScreen = "onb";
  static const String homeScreen = "home";
  static const String bnb = "bnb";
  static const String play = "play";
}
