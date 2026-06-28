import 'package:flutter/material.dart';
import 'package:quran_app/controller/home_controller.dart';
import 'package:quran_app/feature/home/widgets/custom_recently_field.dart';
import 'package:quran_app/feature/home/widgets/custom_text_field_home.dart';
import 'package:quran_app/feature/home/widgets/recommanded_field.dart';
import 'package:quran_app/model/constant/recently_played_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 55),
      child: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: .start,
          children: [
            customTextFieldHome(),
            const SizedBox(height: 32),
            recentlyField(
              context: context,
              songsModel: ListOfModels.recommanded,//recently
              onTap: (int index) =>
                  HomeController.navigator(context: context, index: index),
            ),
            const SizedBox(height: 31),
            recommandedField(
              context: context,
              songsModel: ListOfModels.recommanded,
              onTap: (int index) =>
                  HomeController.navigator(context: context, index: index),
            ),
          ],
        ),
      ),
    );
  }
}
