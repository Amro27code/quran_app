import 'package:flutter/material.dart';
import 'package:quran_app/core/other/color_manager.dart';

IconButton minSize({required String imagePath}) {
  return IconButton(
    onPressed: () {},
    icon: Image(image: AssetImage(imagePath)),
  );
}

GestureDetector midSize({required String imagePath}) {
  return GestureDetector(
    child: Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: .topCenter,
          end: .bottomCenter,
          colors: [ColorManager.selectedItemBnb, ColorManager.onbSecondary2],
        ),
      ),
      child: Image(image: AssetImage(imagePath)),
    ),
  );
}

GestureDetector maxSize({required String imagePath}) {
  return GestureDetector(
    child: CircleAvatar(
      backgroundColor:ColorManager.onbSecondary2 ,
      radius: 30.5,
      child: Image(image: AssetImage(imagePath)),
    ),
  );
}
