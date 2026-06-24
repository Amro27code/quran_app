import 'package:flutter/material.dart';
import 'package:quran_app/controller/onb_controller.dart';
import 'package:quran_app/core/color_manager.dart';
import 'package:quran_app/core/image_path_manager.dart';
import 'package:quran_app/core/numbers/alignmet_manager.dart';
import 'package:quran_app/core/numbers/font_size.dart';
import 'package:quran_app/core/text_manager.dart';
import 'package:quran_app/feature/onBoardingScreen/widgets/custom_button.dart';
import 'package:quran_app/feature/onBoardingScreen/widgets/custom_image.dart';
import 'package:quran_app/feature/onBoardingScreen/widgets/custom_title.dart';

class OnbScreen extends StatelessWidget {
  const OnbScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.width);
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
              const SizedBox(height: 100),
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
              const SizedBox(height: 38),
              customButtonOnb(
                context: context,
                onPressed: () {
                  OnbController.navigatorToNextScreen(context: context);
                },
              ),
              customImage(
                imagePath: ImagePathManager.onBoardingImage,
                context: context,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
