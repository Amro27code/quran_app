import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:quran_app/app/widgets.dart';
import 'package:quran_app/controller/play_controller.dart';
import 'package:quran_app/controller/play_sound_controller.dart';
import 'package:quran_app/feature/play/widgets/custom_next_sound.dart';
import 'package:quran_app/feature/play/widgets/custom_actions.dart';
import 'package:quran_app/feature/play/widgets/custom_app_bar.dart';
import 'package:quran_app/feature/play/widgets/custom_detail_sound.dart';
import 'package:quran_app/feature/play/widgets/custom_tool_play.dart';
import 'package:quran_app/model/constant/recently_played_list.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({super.key});

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  late int index;

  // late AudioCache _audioCache;
  // late AudioPlayer _audioPlayer;
  // late Uri _uri;
  late PlaySoundController _playSoundController;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    index = ModalRoute.of(context)!.settings.arguments as int;
    _playSoundController = PlaySoundController(index: index);
    _playSoundController.play();
  }

  @override
  void dispose() {
    _playSoundController.disposeSound();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // int index = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppBar(
        title: "Now playing",
        onPressed: PlayController.back(context: context),
      ),
      body: backgroundGradiant(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(26.0),
            child: Column(
              children: [
                // Spacer(),
                // const SizedBox(height: 124),
                CustomDetailSound(index: index),
                // const SizedBox(height: 28),
                customActions(value: 50, onChanged: (value) {}, index: index),
                // const SizedBox(height: 14),
                customToolPlay(),
                // const SizedBox(height: 32),
                customNextSound(index: index),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
