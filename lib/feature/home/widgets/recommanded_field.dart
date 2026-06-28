import 'package:flutter/material.dart';
import 'package:quran_app/controller/home_controller.dart';
import 'package:quran_app/feature/home/widgets/recommanded_custom.dart';
import 'package:quran_app/feature/home/widgets/title_for_field_widget.dart';
import 'package:quran_app/model/constant/recently_played_list.dart';
import 'package:quran_app/model/models/recommanded_model.dart';

Column recommandedField({
  required BuildContext context,
  required void Function(int index) onTap,
  required List<SongModel> songsModel,
}) {
  return Column(
    crossAxisAlignment: .start,
    children: [
      titleForEachField(text: "Recommanded music"),
      const SizedBox(height: 21),
      ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(height: 21),
        itemCount: songsModel.length - 3,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => onTap(index+3),
          child: customRecommanded(
            model: songsModel[index+3 ],
            context: context,
          ),
        ),
      ),
    ],
  );
}
