
import 'package:flutter/material.dart';
import 'package:quran_app/controller/home_controller.dart';
import 'package:quran_app/core/other/color_manager.dart';
import 'package:quran_app/model/models/recommanded_model.dart';

ListTile customRecommanded({
  required SongModel model,
  required BuildContext context,
}) {
  return ListTile(
    // onTap: () => HomeController.navigator(context: context),
    contentPadding: const EdgeInsets.all(0),
    leading: SizedBox(
      width: 60,
      child: CircleAvatar(
        backgroundImage: AssetImage(model.imagePath),
        radius: 60,
      ),
    ),
    title: Text(
      model.title,
      style: TextStyle(color: ColorManager.whiteColor, fontSize: 15),
    ),
    subtitle: Text(
      model.subtitle,
      style: TextStyle(color: ColorManager.onbSecondary2, fontSize: 12),
    ),
    trailing: Icon(
      Icons.favorite_border,
      color: model.isFavorite ? Colors.red : ColorManager.whiteColor,
    ),
  );
}
