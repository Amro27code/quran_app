import 'package:flutter/material.dart';
import 'package:quran_app/core/other/color_manager.dart';

Expanded customImage({required String imagePath,required BuildContext context}){
  return Expanded(
    child: Stack(
      children: [
        SizedBox(
          width: .infinity,
          child: Image(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 199,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0, 1),
                end: Alignment(0, -1),
                colors: [
                  ColorManager.primary,
                  ColorManager.onbSecondary1.withAlpha(4),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}