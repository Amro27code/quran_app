import 'package:flutter/material.dart';
import 'package:quran_app/core/color_manager.dart';
import 'package:quran_app/core/font_manager.dart';
import 'package:quran_app/core/image_path_manager.dart';
import 'package:quran_app/core/numbers/alignmet_manager.dart';

class OnbScreen extends StatelessWidget {
  const OnbScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              ColorManager.onbSecondary1,
              ColorManager.onbSecondary2,
            ],
          ),
        ),
        width: .infinity,
        height: .infinity,
        child: SizedBox(
          width: .infinity,
          child: Column(
            children: [
              Text(
                "Find Your\nFavourite\nMusic",
                style: TextStyle(fontFamily: FontManager.orbitronName),
              ),
              const SizedBox(height: 11),
              Text("Find Your Latest Favourite Music\nFrom Our Collection"),
              const SizedBox(height: 58),
              ElevatedButton(onPressed: () {}, child: Text("Get Started")),
              Spacer(),
              Align(
                alignment: .bottomRight,
                child: Image(
                  // alignment: .bottomRight,
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
