import 'package:flutter/material.dart';

class OnbController {
  static void navigatorToNextScreen({
    required BuildContext context,
  }) => Navigator.pushReplacementNamed(context, "bnb");
}
