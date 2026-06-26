import 'package:flutter/material.dart';
import 'package:quran_app/core/other/route_manager.dart';

class OnbController {
  static void navigatorToNextScreen({required BuildContext context}) =>
      Navigator.pushReplacementNamed(context, RouteNames.bnb);
}
