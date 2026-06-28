import 'package:flutter/material.dart';
import 'package:quran_app/core/other/route_manager.dart';
import 'package:quran_app/model/models/recommanded_model.dart';

class HomeController {
  static void navigator({required BuildContext context, required int index}) =>
      Navigator.pushNamed(context, RouteNames.play, arguments: index);
}
