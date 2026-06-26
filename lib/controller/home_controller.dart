import 'package:flutter/material.dart';
import 'package:quran_app/core/other/route_manager.dart';

class HomeController {
  static void navigator({required BuildContext context}) =>
      Navigator.pushNamed(context, RouteNames.play);
}
