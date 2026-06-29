import 'package:audioplayers/audioplayers.dart';
import 'package:quran_app/model/constant/recently_played_list.dart';

class PlaySoundController {
  late int index;
  late AudioCache audioCache;
  late AudioPlayer audioPlayer;
  late Uri uri;

  PlaySoundController._internal(this.index) {
    audioCache = AudioCache(prefix: "");
    audioPlayer = AudioPlayer();
  }

  static PlaySoundController? _instance;

  factory PlaySoundController(int index) {
    _instance ??= PlaySoundController._internal(index);
    return _instance!;
  }

  // static
  void play() async {
    uri = await audioCache.load(ListOfModels.recommanded[index].soundPath);
    await audioPlayer.play(UrlSource(uri.toString()));
  }

  bool isPlay() => audioPlayer.state == PlayerState.playing;

  void stop() async {//
    if (audioPlayer.state == PlayerState.playing) {
      await audioPlayer.pause();
    } else if (audioPlayer.state == PlayerState.paused) {
      await audioPlayer.resume();
    }
  }

  // void disposeSound() {
  //   audioPlayer.dispose();
  // }
}
