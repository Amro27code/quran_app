import 'package:flutter/material.dart';
import 'package:quran_app/feature/splashScreen/splash_screen.dart';

class RouteManager{
  static  Map<String, WidgetBuilder> routes={
    RouteNames.splashScreen:( context)=>const SplashScreen()
  };
}
class RouteNames{
static const String splashScreen="ssc";
}