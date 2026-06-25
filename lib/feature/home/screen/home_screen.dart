import 'package:flutter/material.dart';
import 'package:quran_app/core/color_manager.dart';
import 'package:quran_app/core/image_path_manager.dart';
import 'package:quran_app/feature/home/widgets/custom_recently_field.dart';
import 'package:quran_app/feature/home/widgets/custom_text_field_home.dart';
import 'package:quran_app/feature/home/widgets/recommanded_custom.dart';
import 'package:quran_app/feature/home/widgets/recommanded_field.dart';
import 'package:quran_app/feature/home/widgets/title_for_field_widget.dart';
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
            recentlyField(),
            const SizedBox(height: 31),
            recommandedField(),
          ],
        ),
      ),
    );
  }
}
