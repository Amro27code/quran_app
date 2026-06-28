import 'package:flutter/material.dart';
import 'package:quran_app/core/other/image_path_manager.dart';

class PlayController {
  static VoidCallback back({required BuildContext context}) =>
      ()=> Navigator.pop(context);
  static const List<String> actionsPlay = [
    ImagePathManager.shuffle,
    ImagePathManager.back,
    ImagePathManager.stop,
    ImagePathManager.next,
    ImagePathManager.repeat,
  ];

  static List<EditsPlayModel> listToolPlay = [
    EditsPlayModel(icon: Icons.favorite_border, text: "Like"),
    EditsPlayModel(icon: Icons.playlist_add_check, text: "Playlist"),
    EditsPlayModel(icon: Icons.cloud_download_outlined, text: "Download"),
    EditsPlayModel(icon: Icons.more_vert, text: "More"),
  ];
}

class EditsPlayModel {
  IconData icon;
  String text;

  EditsPlayModel({required this.icon, required this.text});
}
