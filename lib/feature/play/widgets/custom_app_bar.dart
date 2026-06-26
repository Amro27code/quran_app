import 'package:flutter/material.dart';
import 'package:quran_app/core/other/color_manager.dart';

AppBar customAppBar({required String title}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    foregroundColor: ColorManager.whiteColor,
    leading: Icon(Icons.arrow_back_ios_sharp, size: 16),
    title: Text(title, style: TextStyle(fontSize: 18, fontWeight: .w500)),
    centerTitle: true,
    actions: [

      Icon(Icons.share_outlined, size: 16),
      const SizedBox(width: 21),
      Icon(Icons.more_vert, size: 16),
      const SizedBox(width: 13),
    ],
  );
}
