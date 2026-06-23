import 'package:flutter/material.dart';
import 'package:quran_app/core/color_manager.dart';
import 'package:quran_app/core/numbers/font_size.dart';
import 'package:quran_app/core/text_manager.dart';

GestureDetector customButtonOnb({required BuildContext context}){
  return GestureDetector(
    onTap: () => Navigator.pushReplacementNamed(context, "home"),
    child: Container(
      width: 171,
      height: 60,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: ColorManager.whiteColor,width: 2),
        ),
        gradient: LinearGradient(
          begin: .topCenter,
          end: .bottomCenter,
          colors: [
            ColorManager.buttonOnb1,
            ColorManager.buttonOnb2,
          ],
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      alignment: .center,
      child: Text(
        TextManager.onbButton,
        style: TextStyle(
          fontWeight: .w500,
          fontSize: FontSizeValues.buttonOnb,
          color: Colors.white,
        ),
      ),
    ),
  );
}