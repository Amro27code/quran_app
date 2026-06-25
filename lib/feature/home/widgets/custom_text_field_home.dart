import 'package:flutter/material.dart';
import 'package:quran_app/core/color_manager.dart';

Padding customTextFieldHome() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 14.0),
    child: TextField(
      style: TextStyle(color: ColorManager.whiteColor),

      decoration: InputDecoration(
        contentPadding:const EdgeInsets.symmetric(vertical: 16),

        hint: Text(
          "Search Audio",
          style: TextStyle(color: ColorManager.whiteColor.withAlpha(400)),
        ),
        fillColor: Color(0xffB1AFE9),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide.none,
        ),

        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Icon(
            Icons.search,
            color: ColorManager.whiteColor.withAlpha(400),
          ),
        ),
      ),
    ),
  );
}
