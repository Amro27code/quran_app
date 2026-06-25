import 'package:flutter/material.dart';
import 'package:quran_app/core/color_manager.dart';
import 'package:quran_app/model/models/recently_played.dart';

Column recentlyWidget({required RecentlyPlayed model}) {
  return Column(
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
  );
}
