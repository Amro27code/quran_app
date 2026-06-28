import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quran_app/core/other/color_manager.dart';
import 'package:quran_app/core/other/image_path_manager.dart';

Container customNextSound() {
  return Container(
    decoration: BoxDecoration(
      color: ColorManager.onbSecondary2.withAlpha(127),
      borderRadius: BorderRadiusGeometry.circular(10),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6),
      child: Column(
        crossAxisAlignment: .start,
        spacing: 5,
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                "data",
                style: TextStyle(color: ColorManager.whiteColor, fontSize: 8),
              ),
              Container(
                width: 52,
                height: 16,
                // padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusGeometry.circular(50),
                  color: Color(0xff8A86F4),
                ),
                child: Row(
                  mainAxisAlignment: .center,
                  children: [
                    Text(
                      "Queue",
                      style: TextStyle(
                        fontSize: 8,
                        color: ColorManager.whiteColor,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 8,
                      color: ColorManager.whiteColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            leading: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(10),
              child: Image(image: AssetImage(ImagePathManager.yaser)),
            ),
            title: Align(
              alignment: .centerStart,
              child: Column(
                // crossAxisAlignment: .start,
                mainAxisSize: .min,
                mainAxisAlignment: .center,
                children: [
                  Text(
                    "dataadasadafsaf",
                    style: TextStyle(
                      color: ColorManager.whiteColor,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "aassd",
                    style: TextStyle(
                      color: ColorManager.onbSecondary2,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            trailing: Image(image: AssetImage(ImagePathManager.next)),
          ),
        ],
      ),
    ),
  );
}
