import 'package:flutter/material.dart';
import 'package:quran_app/core/color_manager.dart';
import 'package:quran_app/core/image_path_manager.dart';
import 'package:quran_app/core/numbers/alignmet_manager.dart';
import 'package:quran_app/core/numbers/font_size.dart';
import 'package:quran_app/core/text_manager.dart';
import 'package:quran_app/feature/onBoardingScreen/widgets/custom_button.dart';
import 'package:quran_app/feature/onBoardingScreen/widgets/custom_title.dart';

class OnbScreen extends StatelessWidget {
  const OnbScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: .infinity,
        height: .infinity,
        alignment: .center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(
              AlignmentXManager.beginBackgroundSplash,
              AlignmentYManager.beginBackgroundSplash,
            ),
            end: Alignment(
              AlignmentXManager.endBackgroundSplash,
              AlignmentYManager.endBackgroundSplash,
            ),
            colors: [
              ColorManager.primary,
              ColorManager.primary,
              ColorManager.onbSecondary1,
              ColorManager.onbSecondary2,
            ],
          ),
        ),
        child: SizedBox(
          width: .infinity,
          child: Column(
            children: [
              const SizedBox(height: 111),
              customTitle(title: TextManager.titleOnb1),
              customTitle(
                title: TextManager.titleOnb2,
                color: ColorManager.titleOnb,
              ),
              const SizedBox(height: 11),
              customTitle(
                title: TextManager.subtitleOnb,
                height: null,
                size: FontSizeValues.subtitleOnb,
                weight: .w500,
              ),
              const SizedBox(height: 58),
              customButtonOnb(context:context),
              Spacer(),
              Align(
                alignment: .bottomRight,
                child: Image(
                  image: AssetImage(ImagePathManager.onBoardingImage),
                  width: 250,
                  height: 250,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
