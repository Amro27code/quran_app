import 'package:flutter/material.dart';
import 'package:quran_app/app/widgets.dart';
import 'package:quran_app/feature/play/widgets/custom_next_sound.dart';
import 'package:quran_app/feature/play/widgets/custom_actions.dart';
import 'package:quran_app/feature/play/widgets/custom_app_bar.dart';
import 'package:quran_app/feature/play/widgets/custom_detail_sound.dart';
import 'package:quran_app/feature/play/widgets/custom_tool_play.dart';

class PlayScreen extends StatelessWidget {
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppBar(title: "Now playing"),
      body: backgroundGradiant(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(26.0),
            child: Column(
              children: [
                Spacer(),
                // const SizedBox(height: 124),
                CustomDetailSound(),
                // const SizedBox(height: 28),
                customActions(value: 50, onChanged: (value) {}),
                const SizedBox(height: 14),
                customToolPlay(),
                // const SizedBox(height: 32),
                customNextSound(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
