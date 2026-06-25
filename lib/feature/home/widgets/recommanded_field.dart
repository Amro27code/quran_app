import 'package:flutter/material.dart';
import 'package:quran_app/feature/home/widgets/recommanded_custom.dart';
import 'package:quran_app/feature/home/widgets/title_for_field_widget.dart';
import 'package:quran_app/model/constant/recently_played_list.dart';

Column recommandedField() {
  return Column(
    crossAxisAlignment: .start,
    children: [
      titleForEachField(text: "Recommanded music"),
      const SizedBox(height: 21),
      ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(height: 21),
        itemCount: ListOfModels.recommanded.length,
        itemBuilder: (context, index) =>
            customRecommanded(model: ListOfModels.recommanded[index]),
      ),
    ],
  );
}
