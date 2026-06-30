import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:quran_app/model/constant/recently_played_list.dart';

class PlaySoundController {
  late int index;
  late AudioCache audioCache;
  late AudioPlayer audioPlayer;
  late Uri uri;
  late StreamController<bool> playStatusStreamController;
  late Sink<bool> input;
  late Stream<bool> output;
  late StreamController<String> currentTimeStreamController;
  late Sink<String> inputC;
  late Stream<String> outputC;

  late Duration? audioTime;

  PlaySoundController._internal(this.index) {
    audioCache = AudioCache(prefix: "");
    audioPlayer = AudioPlayer();
    playStatusStreamController = StreamController();
    input = playStatusStreamController.sink;
    output = playStatusStreamController.stream.asBroadcastStream();

    currentTimeStreamController = StreamController();
    inputC = currentTimeStreamController.sink;
    outputC = currentTimeStreamController.stream.asBroadcastStream();
  }

  static PlaySoundController? _instance;

  factory PlaySoundController(int index) {
    if (_instance != null) {
      _instance!.index = index; //TODO:{ Important !!!!!!! }
    }

    _instance ??= PlaySoundController._internal(index);
    return _instance!;
  }

  Future<Duration?> play() async {
    uri = await audioCache.load(ListOfModels.recommanded[index].soundPath);
    await audioPlayer.play(UrlSource(uri.toString()));
    audioTime = await audioPlayer.getDuration();
    audioPlayer.onPositionChanged.listen(
      (event) => inputC.add(
       getDurationTime(event)
        // "${event.inMinutes.remainder(60)}:${event.inSeconds.remainder(60).toString().padLeft(2, '0')}",
      ),
    );
    input.add(true);
    return audioTime;
  }

  bool isPlay() => audioPlayer.state == PlayerState.playing;

  void stop() async {
    if (audioPlayer.state == PlayerState.playing) {
      await audioPlayer.pause();
      input.add(false);
    } else if (audioPlayer.state == PlayerState.paused) {
      await audioPlayer.resume();
      input.add(true);
    }
  }

  String getDurationTime(Duration? d) {
    String minute = d!.inMinutes.remainder(60).toString();
    String second = d!.inSeconds
        .remainder(60)
        .toString()
        .padLeft(2, "0");
    return "$minute:$second";
  }

  // void disposeSound() {
  //   // audioPlayer.dispose();
  //   playStatusStreamController.close();
  //   input.close();
  //
  // }
}
