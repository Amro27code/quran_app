import 'package:flutter/material.dart';
import 'package:quran_app/core/other/color_manager.dart';
import 'package:quran_app/core/other/image_path_manager.dart';

class CustomDetailSound extends StatelessWidget {
  const CustomDetailSound({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(20),
          child: Image(
            width: 247,
            height: 261,
            image: AssetImage(ImagePathManager.maher),
            fit: .cover,
          ),
        ),
        const SizedBox(height: 23),
        Text(
          "asd",
          style: TextStyle(fontSize: 18, color: ColorManager.whiteColor),
        ),
        const SizedBox(height: 4),
        Text("maskfd;df",
          style: TextStyle(fontSize: 12, color: ColorManager.onbSecondary2),
        ),
      ],
    );
  }
}
