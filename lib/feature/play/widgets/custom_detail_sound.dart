import 'package:flutter/material.dart';
import 'package:quran_app/core/other/color_manager.dart';
import 'package:quran_app/core/other/image_path_manager.dart';
import 'package:quran_app/model/constant/recently_played_list.dart';
import 'package:quran_app/model/models/recommanded_model.dart';

class CustomDetailSound extends StatelessWidget {
  const CustomDetailSound({
    super.key, required this.songModel,//required this.songModel,
  });
  final SongModel songModel;
  // final SongModel songModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(20),
          child: Image(
            width: 247,
            height: 261,
            image: AssetImage(songModel.imagePath),
            fit: .cover,
          ),
        ),
        const SizedBox(height: 23),
        Text(
          songModel.title,
          style: TextStyle(fontSize: 18, color: ColorManager.whiteColor),
        ),
        const SizedBox(height: 4),
        Text(songModel.subtitle,
          style: TextStyle(fontSize: 12, color: ColorManager.onbSecondary2),
        ),
      ],
    );
  }
}
