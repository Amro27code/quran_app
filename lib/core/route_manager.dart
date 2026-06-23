import 'package:flutter/material.dart';
import 'package:quran_app/feature/onBoardingScreen/screens/onb_screen.dart';
import 'package:quran_app/feature/splashScreen/splash_screen.dart';

class RouteManager{
  static  Map<String, WidgetBuilder> routes={
    RouteNames.splashScreen:( context)=>const SplashScreen(),
    RouteNames.onBoardingScreen:( context)=>const OnbScreen(),
  };
}
class RouteNames{
static const String splashScreen="ssc";
static const String onBoardingScreen="onb";
}