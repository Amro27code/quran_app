import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quran_app/core/other/color_manager.dart';
import 'package:quran_app/core/other/image_path_manager.dart';

IconButton minSize({
  required String imagePath,
  // required  Function() onTap,
}) {
  return IconButton(
    onPressed: () {},
    icon: Image(image: AssetImage(imagePath)),
  );
}

GestureDetector midSize({
  required String imagePath,
  // required void Function() onTap,
}) {
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

GestureDetector maxSize({
  required Function() onTap,
  required Stream<bool> controller,
}) {
  return GestureDetector(
    onTap: onTap,
    child: CircleAvatar(
      backgroundColor: ColorManager.onbSecondary2,
      radius: 30.5,
      child: StreamBuilder<bool>(
        stream: controller,
        builder: (context, snapshot) => Image(
          image: AssetImage(
            (snapshot.data!) ? ImagePathManager.stop : ImagePathManager.run,
          ),
          width: 30,height: 30,
        ),
        initialData: true,
      ),
    ),
  );
}
