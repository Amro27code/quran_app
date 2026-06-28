import 'package:flutter/material.dart';
import 'package:quran_app/controller/home_controller.dart';
import 'package:quran_app/core/other/color_manager.dart';
import 'package:quran_app/model/models/recommanded_model.dart';

GestureDetector recentlyWidget({
  required SongModel model,
  required BuildContext context,
}) {
  return GestureDetector(
    // onTap: () => HomeController.navigator(context: context),
    child: Column(
      crossAxisAlignment: .end,
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(10),
            child: Image(
              image: AssetImage(model.imagePath),
              fit: .cover,
              width: 151,
              height: 151,
            ),
          ),
        ),
        Text(
          model.title,
          style: TextStyle(color: ColorManager.whiteColor, fontSize: 15),
        ),
        Text(
          model.subtitle,
          style: TextStyle(color: ColorManager.onbSecondary2, fontSize: 12),
        ),
      ],
    ),
  );
}
