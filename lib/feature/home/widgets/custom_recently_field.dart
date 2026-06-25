import 'package:flutter/material.dart';
import 'package:quran_app/feature/home/widgets/recently_widget.dart';
import 'package:quran_app/feature/home/widgets/title_for_field_widget.dart';
import 'package:quran_app/model/constant/recently_played_list.dart';

Column recentlyField() {
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
          itemCount: ListOfModels.recently.length,
          itemBuilder: (context, index) =>
              recentlyWidget(model: ListOfModels.recently[index]),
        ),
      ),
    ],
  );
}
