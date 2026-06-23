import 'package:flutter/material.dart';
import 'package:quran_app/core/numbers/font_size.dart';

Text customTitle({
  required String title,
  double? height = 1,
  Color? color = Colors.white,
  double size = FontSizeValues.titleOnb,
  FontWeight weight = FontWeight.w700,
}) {
  return Text(
    title,
    textAlign: .center,
    style: TextStyle(
      height: height,
      color: color,
      fontWeight: weight,
      fontSize: size,
    ),
  );
}
