import 'package:flutter/material.dart';
import 'package:quran_app/controller/home_controller.dart';
import 'package:quran_app/feature/home/widgets/recently_widget.dart';
import 'package:quran_app/feature/home/widgets/title_for_field_widget.dart';
import 'package:quran_app/model/constant/recently_played_list.dart';
import 'package:quran_app/model/models/recommanded_model.dart';

Column recentlyField({
  required BuildContext context,
  // required SongModel songModel,
  required List<SongModel>songsModel,
  required void Function(int index) onTap
}) {
  return Column(
    crossAxisAlignment: .start,
    children: [
      titleForEachField(text: "Recently Played"),
      const SizedBox(height: 22),

      SizedBox(
        height: 198,
        child: ListView.separated(
          scrollDirection: .horizontal,
          separatorBuilder: (context, index) => const SizedBox(width: 17),
          itemCount: 3,//songsModel.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () => onTap(index),
            child: recentlyWidget(
              model: songsModel[index],
              context: context,
            ),
          ),
        ),
      ),
    ],
  );
}
