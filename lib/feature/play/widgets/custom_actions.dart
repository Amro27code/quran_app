import 'package:flutter/material.dart';
import 'package:quran_app/core/other/color_manager.dart';
import 'package:quran_app/core/other/image_path_manager.dart';
import 'package:quran_app/feature/play/widgets/custom_action.dart';
import 'package:quran_app/model/models/recommanded_model.dart';

Column customActions({
  required Function() onTap,
  required double value,
  // required bool isPlay,
  required ValueChanged<double> onChanged,
  required SongModel songModel,
}) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: .spaceEvenly,
        children: [
          minSize(imagePath: ImagePathManager.shuffle),
          midSize(imagePath: ImagePathManager.back),
          maxSize(
            imagePath: ImagePathManager.stop,
            onTap: onTap,
            // isPlay: isPlay,
          ),
          midSize(imagePath: ImagePathManager.next),
          minSize(imagePath: ImagePathManager.repeat),
        ],
      ),
      const SizedBox(height: 29),
      SliderTheme(
        data: SliderThemeData(
          // thumbShape:SliderComponentShape.noThumb
          thumbShape: RoundedSliderThumbShape(),
          padding: const EdgeInsets.all(0),
          overlayShape: SliderComponentShape.noOverlay,
        ),
        child: Slider(
          value: value,
          min: 0,
          max: 200,
          activeColor: ColorManager.onbSecondary2,
          inactiveColor: Color(0xff2F5D9A),
          onChanged: onChanged,
        ),
      ),
      Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Text(
            "2:05",
            style: TextStyle(
              color: ColorManager.onbSecondary2,
              fontSize: 12,
              fontWeight: .w500,
            ),
          ),
          Text(
            "3:45",
            style: TextStyle(
              color: ColorManager.onbSecondary2,
              fontSize: 12,
              fontWeight: .w500,
            ),
          ),
        ],
      ),
    ],
  );
}

class RoundedSliderThumbShape extends SliderComponentShape {
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size(16, 40);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;
    final Paint paint = Paint()
      ..color = ColorManager.onbSecondary2
      ..strokeCap = .round
      ..strokeWidth = 2;
    canvas.drawCircle(center, 3, paint);
  }
}
