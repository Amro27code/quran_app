import 'package:audioplayers/audioplayers.dart';
import 'package:quran_app/model/constant/recently_played_list.dart';

class PlaySoundController {
  late int index;
  late AudioCache audioCache;
  late AudioPlayer audioPlayer;
  late Uri uri;

  PlaySoundController({
    required this.index,
  }) {
    audioCache = AudioCache(prefix: "");
    audioPlayer = AudioPlayer();

  }

  // static
  void play() async {
    uri = await audioCache.load(ListOfModels.recommanded[index].soundPath);
    await audioPlayer.play(UrlSource(uri.toString()));
  }


   void disposeSound() {
  audioPlayer.dispose();
  }
}
