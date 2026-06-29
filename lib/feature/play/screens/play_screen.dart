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
  late PlaySoundController _playSoundController;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    index = ModalRoute.of(context)!.settings.arguments as int;
    _playSoundController = PlaySoundController(index);
    _playSoundController.play();
  }

  late bool isPlay = _playSoundController.isPlay();

  // @override
  // void dispose() {
  // TODO:عملنا سينجيلتون لانه بزبطش يفتح اكثر من صوت بنفس الوقت
  // TODO:والdispose  شلناه ليش لانه لازم يضل شغال حتى بالخلفية او الشاشة الرئيسية كمان
  // TODO:واذا عملت ال  dis  لما تفتح اغنية وترجع تفتحها كمان مرة رح يضرب ايرور لانه انت قتلته
  //   _playSoundController.disposeSound();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
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
                Spacer(),
                // const SizedBox(height: 124),
                CustomDetailSound(songModel: ListOfModels.recommanded[index]),
                const SizedBox(height: 28),
                customActions(
                  value: 50,
                  onChanged: (value) {},
                  onTap: _playSoundController.stop,
                  //     () async {
                  //  await _playSoundController.stop;
                  //    setState((){});
                  // }
                  // isPlay: _playSoundController.isPlay(),
                  songModel: ListOfModels.recommanded[index],
                ),
                const SizedBox(height: 14),
                customToolPlay(),
                Spacer(),
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
