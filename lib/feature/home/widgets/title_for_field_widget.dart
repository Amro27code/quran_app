import 'package:flutter/material.dart';
import 'package:quran_app/core/other/color_manager.dart';

Padding titleForEachField({required String text}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 14.0),
    child: Text(
      text,
      style: TextStyle(color: ColorManager.whiteColor, fontSize: 18),
    ),
  );
}
